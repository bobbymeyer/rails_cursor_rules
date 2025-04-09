namespace :enforce do
  desc "Enforce feature request rules"
  task :feature_request do
    sh "bin/enforce -p feature_request"
  end

  desc "Enforce test-first rules"
  task :test_first do
    sh "bin/enforce -p test_first"
  end

  desc "Enforce tests pass"
  task :tests_pass do
    sh "bin/enforce -p tests_pass"
  end

  desc "Enforce code quality"
  task :code_quality do
    sh "bin/enforce -p code_quality"
  end

  desc "Enforce git commit rules"
  task :git_commit do
    sh "bin/enforce -p git_commit"
  end

  desc "Enforce pre-merge rules"
  task :pre_merge do
    sh "bin/enforce -p pre_merge"
  end

  desc "Run all enforcement checks"
  task :all => [:feature_request, :test_first, :tests_pass, :code_quality, :git_commit, :pre_merge]
end 