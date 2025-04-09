# PostgreSQL Configuration
Rails.application.config.after_initialize do
  # Set statement timeout
  ActiveRecord::Base.connection.execute("SET statement_timeout = '60s'")

  # Set lock timeout
  ActiveRecord::Base.connection.execute("SET lock_timeout = '10s'")

  # Set idle in transaction timeout
  ActiveRecord::Base.connection.execute("SET idle_in_transaction_session_timeout = '60s'")

  # Set application name for better monitoring
  ActiveRecord::Base.connection.execute("SET application_name = '#{Rails.application.class.module_parent_name}'")
end

# Configure connection pool
Rails.application.config.active_record.database_selector = { delay: 2.seconds }
Rails.application.config.active_record.database_resolver = ActiveRecord::Middleware::DatabaseSelector::Resolver
Rails.application.config.active_record.database_resolver_context = ActiveRecord::Middleware::DatabaseSelector::Resolver::Session

# Configure prepared statements
Rails.application.config.active_record.prepared_statements = true

# Configure advisory locks
Rails.application.config.active_record.advisory_locks_enabled = true

# Configure connection retry
Rails.application.config.active_record.connection_handling = :retry

# Configure connection validation
Rails.application.config.active_record.verify_foreign_keys_for_fixtures = true

# Configure connection timeouts
Rails.application.config.active_record.connection_timeout = 60

# Configure statement limits
Rails.application.config.active_record.statement_limit = 1000 