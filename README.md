# Rails Cursor Rules

This repository contains Cursor rules for Rails projects. These rules help maintain consistent coding style and practices across Rails applications.

## Rule Files

- `ruby_style.mdc`: Ruby coding style and conventions
- `controller_style.mdc`: Controller-specific conventions
- `view_style.mdc`: View and template conventions
- `javascript_style.mdc`: JavaScript and Hotwire conventions
- `code_organization.mdc`: Code organization and structure
- `development_workflow.mdc`: Development workflow and practices
- `tech_stack.mdc`: Tech stack and component conventions
- `version.mdc`: Version requirements

## Documentation

Detailed documentation for specific technologies can be found in `.cursor/rules/docs/`:

- `rails_core.md`: Core Rails patterns and practices
- `hotwire.md`: Hotwire (Turbo + Stimulus) patterns
- `stimulus.md`: Stimulus.js specific patterns
- `simple_form.md`: Simple Form patterns
- `solid_queue.md`: Solid Queue background job patterns
- `importmaps.md`: Import Maps patterns
- `pagy.md`: Pagination patterns
- `simplecov.md`: Test coverage patterns

## Usage

1. Copy the `.cursor/rules` directory to your Rails project
2. Cursor will automatically apply these rules when working with matching files
3. Rules are applied based on file patterns defined in each rule's frontmatter

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Submit a pull request

## License

MIT License. See LICENSE for details. 