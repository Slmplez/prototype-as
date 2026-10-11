/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.formatter;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.internal.compiler.util.Util;

public class DefaultCodeFormatterOptions {
    public static final int TAB = 1;
    public static final int SPACE = 2;
    public static final int MIXED = 4;
    public int alignment_for_arguments_in_allocation_expression;
    public int alignment_for_arguments_in_annotation;
    public int alignment_for_arguments_in_enum_constant;
    public int alignment_for_arguments_in_explicit_constructor_call;
    public int alignment_for_arguments_in_method_invocation;
    public int alignment_for_arguments_in_qualified_allocation_expression;
    public int alignment_for_assignment;
    public int alignment_for_binary_expression;
    public int alignment_for_compact_if;
    public int alignment_for_conditional_expression;
    public int alignment_for_enum_constants;
    public int alignment_for_expressions_in_array_initializer;
    public int alignment_for_method_declaration;
    public int alignment_for_multiple_fields;
    public int alignment_for_parameters_in_constructor_declaration;
    public int alignment_for_parameters_in_method_declaration;
    public int alignment_for_selector_in_method_invocation;
    public int alignment_for_superclass_in_type_declaration;
    public int alignment_for_superinterfaces_in_enum_declaration;
    public int alignment_for_superinterfaces_in_type_declaration;
    public int alignment_for_throws_clause_in_constructor_declaration;
    public int alignment_for_throws_clause_in_method_declaration;
    public int alignment_for_resources_in_try;
    public int alignment_for_union_type_in_multicatch;
    public boolean align_type_members_on_columns;
    public String brace_position_for_annotation_type_declaration;
    public String brace_position_for_anonymous_type_declaration;
    public String brace_position_for_array_initializer;
    public String brace_position_for_block;
    public String brace_position_for_block_in_case;
    public String brace_position_for_constructor_declaration;
    public String brace_position_for_enum_constant;
    public String brace_position_for_enum_declaration;
    public String brace_position_for_method_declaration;
    public String brace_position_for_type_declaration;
    public String brace_position_for_switch;
    public int continuation_indentation;
    public int continuation_indentation_for_array_initializer;
    public int blank_lines_after_imports;
    public int blank_lines_after_package;
    public int blank_lines_before_field;
    public int blank_lines_before_first_class_body_declaration;
    public int blank_lines_before_imports;
    public int blank_lines_before_member_type;
    public int blank_lines_before_method;
    public int blank_lines_before_new_chunk;
    public int blank_lines_before_package;
    public int blank_lines_between_import_groups;
    public int blank_lines_between_type_declarations;
    public int blank_lines_at_beginning_of_method_body;
    public boolean comment_clear_blank_lines_in_javadoc_comment;
    public boolean comment_clear_blank_lines_in_block_comment;
    public boolean comment_new_lines_at_block_boundaries;
    public boolean comment_new_lines_at_javadoc_boundaries;
    public boolean comment_format_javadoc_comment;
    public boolean comment_format_line_comment;
    public boolean comment_format_line_comment_starting_on_first_column;
    public boolean comment_format_block_comment;
    public boolean comment_format_header;
    public boolean comment_format_html;
    public boolean comment_format_source;
    public boolean comment_indent_parameter_description;
    public boolean comment_indent_root_tags;
    public boolean comment_insert_empty_line_before_root_tags;
    public boolean comment_insert_new_line_for_parameter;
    public boolean comment_preserve_white_space_between_code_and_line_comments;
    public int comment_line_length;
    public boolean use_tags;
    public char[] disabling_tag;
    public char[] enabling_tag;
    private static final char[] DEFAULT_DISABLING_TAG = "@formatter:off".toCharArray();
    private static final char[] DEFAULT_ENABLING_TAG = "@formatter:on".toCharArray();
    public boolean indent_statements_compare_to_block;
    public boolean indent_statements_compare_to_body;
    public boolean indent_body_declarations_compare_to_annotation_declaration_header;
    public boolean indent_body_declarations_compare_to_enum_constant_header;
    public boolean indent_body_declarations_compare_to_enum_declaration_header;
    public boolean indent_body_declarations_compare_to_type_header;
    public boolean indent_breaks_compare_to_cases;
    public boolean indent_empty_lines;
    public boolean indent_switchstatements_compare_to_cases;
    public boolean indent_switchstatements_compare_to_switch;
    public int indentation_size;
    public boolean insert_new_line_after_annotation_on_type;
    public boolean insert_new_line_after_annotation_on_field;
    public boolean insert_new_line_after_annotation_on_method;
    public boolean insert_new_line_after_annotation_on_package;
    public boolean insert_new_line_after_annotation_on_parameter;
    public boolean insert_new_line_after_annotation_on_local_variable;
    public boolean insert_new_line_after_label;
    public boolean insert_new_line_after_opening_brace_in_array_initializer;
    public boolean insert_new_line_at_end_of_file_if_missing;
    public boolean insert_new_line_before_catch_in_try_statement;
    public boolean insert_new_line_before_closing_brace_in_array_initializer;
    public boolean insert_new_line_before_else_in_if_statement;
    public boolean insert_new_line_before_finally_in_try_statement;
    public boolean insert_new_line_before_while_in_do_statement;
    public boolean insert_new_line_in_empty_anonymous_type_declaration;
    public boolean insert_new_line_in_empty_block;
    public boolean insert_new_line_in_empty_annotation_declaration;
    public boolean insert_new_line_in_empty_enum_constant;
    public boolean insert_new_line_in_empty_enum_declaration;
    public boolean insert_new_line_in_empty_method_body;
    public boolean insert_new_line_in_empty_type_declaration;
    public boolean insert_space_after_and_in_type_parameter;
    public boolean insert_space_after_assignment_operator;
    public boolean insert_space_after_at_in_annotation;
    public boolean insert_space_after_at_in_annotation_type_declaration;
    public boolean insert_space_after_binary_operator;
    public boolean insert_space_after_closing_angle_bracket_in_type_arguments;
    public boolean insert_space_after_closing_angle_bracket_in_type_parameters;
    public boolean insert_space_after_closing_paren_in_cast;
    public boolean insert_space_after_closing_brace_in_block;
    public boolean insert_space_after_colon_in_assert;
    public boolean insert_space_after_colon_in_case;
    public boolean insert_space_after_colon_in_conditional;
    public boolean insert_space_after_colon_in_for;
    public boolean insert_space_after_colon_in_labeled_statement;
    public boolean insert_space_after_comma_in_allocation_expression;
    public boolean insert_space_after_comma_in_annotation;
    public boolean insert_space_after_comma_in_array_initializer;
    public boolean insert_space_after_comma_in_constructor_declaration_parameters;
    public boolean insert_space_after_comma_in_constructor_declaration_throws;
    public boolean insert_space_after_comma_in_enum_constant_arguments;
    public boolean insert_space_after_comma_in_enum_declarations;
    public boolean insert_space_after_comma_in_explicit_constructor_call_arguments;
    public boolean insert_space_after_comma_in_for_increments;
    public boolean insert_space_after_comma_in_for_inits;
    public boolean insert_space_after_comma_in_method_invocation_arguments;
    public boolean insert_space_after_comma_in_method_declaration_parameters;
    public boolean insert_space_after_comma_in_method_declaration_throws;
    public boolean insert_space_after_comma_in_multiple_field_declarations;
    public boolean insert_space_after_comma_in_multiple_local_declarations;
    public boolean insert_space_after_comma_in_parameterized_type_reference;
    public boolean insert_space_after_comma_in_superinterfaces;
    public boolean insert_space_after_comma_in_type_arguments;
    public boolean insert_space_after_comma_in_type_parameters;
    public boolean insert_space_after_ellipsis;
    public boolean insert_space_after_opening_angle_bracket_in_parameterized_type_reference;
    public boolean insert_space_after_opening_angle_bracket_in_type_arguments;
    public boolean insert_space_after_opening_angle_bracket_in_type_parameters;
    public boolean insert_space_after_opening_bracket_in_array_allocation_expression;
    public boolean insert_space_after_opening_bracket_in_array_reference;
    public boolean insert_space_after_opening_brace_in_array_initializer;
    public boolean insert_space_after_opening_paren_in_annotation;
    public boolean insert_space_after_opening_paren_in_cast;
    public boolean insert_space_after_opening_paren_in_catch;
    public boolean insert_space_after_opening_paren_in_constructor_declaration;
    public boolean insert_space_after_opening_paren_in_enum_constant;
    public boolean insert_space_after_opening_paren_in_for;
    public boolean insert_space_after_opening_paren_in_if;
    public boolean insert_space_after_opening_paren_in_method_declaration;
    public boolean insert_space_after_opening_paren_in_method_invocation;
    public boolean insert_space_after_opening_paren_in_parenthesized_expression;
    public boolean insert_space_after_opening_paren_in_switch;
    public boolean insert_space_after_opening_paren_in_synchronized;
    public boolean insert_space_after_opening_paren_in_try;
    public boolean insert_space_after_opening_paren_in_while;
    public boolean insert_space_after_postfix_operator;
    public boolean insert_space_after_prefix_operator;
    public boolean insert_space_after_question_in_conditional;
    public boolean insert_space_after_question_in_wilcard;
    public boolean insert_space_after_semicolon_in_for;
    public boolean insert_space_after_semicolon_in_try_resources;
    public boolean insert_space_after_unary_operator;
    public boolean insert_space_before_and_in_type_parameter;
    public boolean insert_space_before_at_in_annotation_type_declaration;
    public boolean insert_space_before_assignment_operator;
    public boolean insert_space_before_binary_operator;
    public boolean insert_space_before_closing_angle_bracket_in_parameterized_type_reference;
    public boolean insert_space_before_closing_angle_bracket_in_type_arguments;
    public boolean insert_space_before_closing_angle_bracket_in_type_parameters;
    public boolean insert_space_before_closing_brace_in_array_initializer;
    public boolean insert_space_before_closing_bracket_in_array_allocation_expression;
    public boolean insert_space_before_closing_bracket_in_array_reference;
    public boolean insert_space_before_closing_paren_in_annotation;
    public boolean insert_space_before_closing_paren_in_cast;
    public boolean insert_space_before_closing_paren_in_catch;
    public boolean insert_space_before_closing_paren_in_constructor_declaration;
    public boolean insert_space_before_closing_paren_in_enum_constant;
    public boolean insert_space_before_closing_paren_in_for;
    public boolean insert_space_before_closing_paren_in_if;
    public boolean insert_space_before_closing_paren_in_method_declaration;
    public boolean insert_space_before_closing_paren_in_method_invocation;
    public boolean insert_space_before_closing_paren_in_parenthesized_expression;
    public boolean insert_space_before_closing_paren_in_switch;
    public boolean insert_space_before_closing_paren_in_synchronized;
    public boolean insert_space_before_closing_paren_in_try;
    public boolean insert_space_before_closing_paren_in_while;
    public boolean insert_space_before_colon_in_assert;
    public boolean insert_space_before_colon_in_case;
    public boolean insert_space_before_colon_in_conditional;
    public boolean insert_space_before_colon_in_default;
    public boolean insert_space_before_colon_in_for;
    public boolean insert_space_before_colon_in_labeled_statement;
    public boolean insert_space_before_comma_in_allocation_expression;
    public boolean insert_space_before_comma_in_annotation;
    public boolean insert_space_before_comma_in_array_initializer;
    public boolean insert_space_before_comma_in_constructor_declaration_parameters;
    public boolean insert_space_before_comma_in_constructor_declaration_throws;
    public boolean insert_space_before_comma_in_enum_constant_arguments;
    public boolean insert_space_before_comma_in_enum_declarations;
    public boolean insert_space_before_comma_in_explicit_constructor_call_arguments;
    public boolean insert_space_before_comma_in_for_increments;
    public boolean insert_space_before_comma_in_for_inits;
    public boolean insert_space_before_comma_in_method_invocation_arguments;
    public boolean insert_space_before_comma_in_method_declaration_parameters;
    public boolean insert_space_before_comma_in_method_declaration_throws;
    public boolean insert_space_before_comma_in_multiple_field_declarations;
    public boolean insert_space_before_comma_in_multiple_local_declarations;
    public boolean insert_space_before_comma_in_parameterized_type_reference;
    public boolean insert_space_before_comma_in_superinterfaces;
    public boolean insert_space_before_comma_in_type_arguments;
    public boolean insert_space_before_comma_in_type_parameters;
    public boolean insert_space_before_ellipsis;
    public boolean insert_space_before_parenthesized_expression_in_return;
    public boolean insert_space_before_parenthesized_expression_in_throw;
    public boolean insert_space_before_question_in_wilcard;
    public boolean insert_space_before_opening_angle_bracket_in_parameterized_type_reference;
    public boolean insert_space_before_opening_angle_bracket_in_type_arguments;
    public boolean insert_space_before_opening_angle_bracket_in_type_parameters;
    public boolean insert_space_before_opening_brace_in_annotation_type_declaration;
    public boolean insert_space_before_opening_brace_in_anonymous_type_declaration;
    public boolean insert_space_before_opening_brace_in_array_initializer;
    public boolean insert_space_before_opening_brace_in_block;
    public boolean insert_space_before_opening_brace_in_constructor_declaration;
    public boolean insert_space_before_opening_brace_in_enum_constant;
    public boolean insert_space_before_opening_brace_in_enum_declaration;
    public boolean insert_space_before_opening_brace_in_method_declaration;
    public boolean insert_space_before_opening_brace_in_type_declaration;
    public boolean insert_space_before_opening_bracket_in_array_allocation_expression;
    public boolean insert_space_before_opening_bracket_in_array_reference;
    public boolean insert_space_before_opening_bracket_in_array_type_reference;
    public boolean insert_space_before_opening_paren_in_annotation;
    public boolean insert_space_before_opening_paren_in_annotation_type_member_declaration;
    public boolean insert_space_before_opening_paren_in_catch;
    public boolean insert_space_before_opening_paren_in_constructor_declaration;
    public boolean insert_space_before_opening_paren_in_enum_constant;
    public boolean insert_space_before_opening_paren_in_for;
    public boolean insert_space_before_opening_paren_in_if;
    public boolean insert_space_before_opening_paren_in_method_invocation;
    public boolean insert_space_before_opening_paren_in_method_declaration;
    public boolean insert_space_before_opening_paren_in_switch;
    public boolean insert_space_before_opening_paren_in_try;
    public boolean insert_space_before_opening_brace_in_switch;
    public boolean insert_space_before_opening_paren_in_synchronized;
    public boolean insert_space_before_opening_paren_in_parenthesized_expression;
    public boolean insert_space_before_opening_paren_in_while;
    public boolean insert_space_before_postfix_operator;
    public boolean insert_space_before_prefix_operator;
    public boolean insert_space_before_question_in_conditional;
    public boolean insert_space_before_semicolon;
    public boolean insert_space_before_semicolon_in_for;
    public boolean insert_space_before_semicolon_in_try_resources;
    public boolean insert_space_before_unary_operator;
    public boolean insert_space_between_brackets_in_array_type_reference;
    public boolean insert_space_between_empty_braces_in_array_initializer;
    public boolean insert_space_between_empty_brackets_in_array_allocation_expression;
    public boolean insert_space_between_empty_parens_in_annotation_type_member_declaration;
    public boolean insert_space_between_empty_parens_in_constructor_declaration;
    public boolean insert_space_between_empty_parens_in_enum_constant;
    public boolean insert_space_between_empty_parens_in_method_declaration;
    public boolean insert_space_between_empty_parens_in_method_invocation;
    public boolean compact_else_if;
    public boolean keep_guardian_clause_on_one_line;
    public boolean keep_else_statement_on_same_line;
    public boolean keep_empty_array_initializer_on_one_line;
    public boolean keep_simple_if_on_one_line;
    public boolean keep_then_statement_on_same_line;
    public boolean never_indent_block_comments_on_first_column;
    public boolean never_indent_line_comments_on_first_column;
    public int number_of_empty_lines_to_preserve;
    public boolean join_wrapped_lines;
    public boolean join_lines_in_comments;
    public boolean put_empty_statement_on_new_line;
    public int tab_size;
    public final char filling_space = (char)32;
    public int page_width;
    public int tab_char;
    public boolean use_tabs_only_for_leading_indentations;
    public boolean wrap_before_binary_operator;
    public boolean wrap_before_or_operator_multicatch;
    public boolean wrap_outer_expressions_when_nested;
    public int initial_indentation_level;
    public String line_separator;

    public static DefaultCodeFormatterOptions getDefaultSettings() {
        DefaultCodeFormatterOptions options = new DefaultCodeFormatterOptions();
        options.setDefaultSettings();
        return options;
    }

    public static DefaultCodeFormatterOptions getEclipseDefaultSettings() {
        DefaultCodeFormatterOptions options = new DefaultCodeFormatterOptions();
        options.setEclipseDefaultSettings();
        return options;
    }

    public static DefaultCodeFormatterOptions getJavaConventionsSettings() {
        DefaultCodeFormatterOptions options = new DefaultCodeFormatterOptions();
        options.setJavaConventionsSettings();
        return options;
    }

    private DefaultCodeFormatterOptions() {
    }

    public DefaultCodeFormatterOptions(Map settings) {
        this.setDefaultSettings();
        if (settings == null) {
            return;
        }
        this.set(settings);
    }

    private String getAlignment(int alignment) {
        return Integer.toString(alignment);
    }

    public Map getMap() {
        HashMap<String, String> options = new HashMap<String, String>();
        options.put("org.eclipse.jdt.core.formatter.alignment_for_arguments_in_allocation_expression", this.getAlignment(this.alignment_for_arguments_in_allocation_expression));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_arguments_in_annotation", this.getAlignment(this.alignment_for_arguments_in_annotation));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_arguments_in_enum_constant", this.getAlignment(this.alignment_for_arguments_in_enum_constant));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_arguments_in_explicit_constructor_call", this.getAlignment(this.alignment_for_arguments_in_explicit_constructor_call));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_arguments_in_method_invocation", this.getAlignment(this.alignment_for_arguments_in_method_invocation));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_arguments_in_qualified_allocation_expression", this.getAlignment(this.alignment_for_arguments_in_qualified_allocation_expression));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_assignment", this.getAlignment(this.alignment_for_assignment));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_binary_expression", this.getAlignment(this.alignment_for_binary_expression));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_compact_if", this.getAlignment(this.alignment_for_compact_if));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_conditional_expression", this.getAlignment(this.alignment_for_conditional_expression));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_enum_constants", this.getAlignment(this.alignment_for_enum_constants));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_expressions_in_array_initializer", this.getAlignment(this.alignment_for_expressions_in_array_initializer));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_method_declaration", this.getAlignment(this.alignment_for_method_declaration));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_multiple_fields", this.getAlignment(this.alignment_for_multiple_fields));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_parameters_in_constructor_declaration", this.getAlignment(this.alignment_for_parameters_in_constructor_declaration));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_parameters_in_method_declaration", this.getAlignment(this.alignment_for_parameters_in_method_declaration));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_resources_in_try", this.getAlignment(this.alignment_for_resources_in_try));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_selector_in_method_invocation", this.getAlignment(this.alignment_for_selector_in_method_invocation));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_superclass_in_type_declaration", this.getAlignment(this.alignment_for_superclass_in_type_declaration));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_superinterfaces_in_enum_declaration", this.getAlignment(this.alignment_for_superinterfaces_in_enum_declaration));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_superinterfaces_in_type_declaration", this.getAlignment(this.alignment_for_superinterfaces_in_type_declaration));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_throws_clause_in_constructor_declaration", this.getAlignment(this.alignment_for_throws_clause_in_constructor_declaration));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_throws_clause_in_method_declaration", this.getAlignment(this.alignment_for_throws_clause_in_method_declaration));
        options.put("org.eclipse.jdt.core.formatter.alignment_for_union_type_in_multicatch", this.getAlignment(this.alignment_for_union_type_in_multicatch));
        options.put("org.eclipse.jdt.core.formatter.align_type_members_on_columns", this.align_type_members_on_columns ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.brace_position_for_annotation_type_declaration", this.brace_position_for_annotation_type_declaration);
        options.put("org.eclipse.jdt.core.formatter.brace_position_for_anonymous_type_declaration", this.brace_position_for_anonymous_type_declaration);
        options.put("org.eclipse.jdt.core.formatter.brace_position_for_array_initializer", this.brace_position_for_array_initializer);
        options.put("org.eclipse.jdt.core.formatter.brace_position_for_block", this.brace_position_for_block);
        options.put("org.eclipse.jdt.core.formatter.brace_position_for_block_in_case", this.brace_position_for_block_in_case);
        options.put("org.eclipse.jdt.core.formatter.brace_position_for_constructor_declaration", this.brace_position_for_constructor_declaration);
        options.put("org.eclipse.jdt.core.formatter.brace_position_for_enum_constant", this.brace_position_for_enum_constant);
        options.put("org.eclipse.jdt.core.formatter.brace_position_for_enum_declaration", this.brace_position_for_enum_declaration);
        options.put("org.eclipse.jdt.core.formatter.brace_position_for_method_declaration", this.brace_position_for_method_declaration);
        options.put("org.eclipse.jdt.core.formatter.brace_position_for_type_declaration", this.brace_position_for_type_declaration);
        options.put("org.eclipse.jdt.core.formatter.brace_position_for_switch", this.brace_position_for_switch);
        options.put("org.eclipse.jdt.core.formatter.comment.clear_blank_lines_in_block_comment", this.comment_clear_blank_lines_in_block_comment ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.comment.clear_blank_lines_in_javadoc_comment", this.comment_clear_blank_lines_in_javadoc_comment ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.comment.new_lines_at_block_boundaries", this.comment_new_lines_at_block_boundaries ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.comment.new_lines_at_javadoc_boundaries", this.comment_new_lines_at_javadoc_boundaries ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.comment.format_block_comments", this.comment_format_block_comment ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.comment.format_header", this.comment_format_header ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.comment.format_html", this.comment_format_html ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.comment.format_javadoc_comments", this.comment_format_javadoc_comment ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.comment.format_line_comments", this.comment_format_line_comment ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.format_line_comment_starting_on_first_column", this.comment_format_line_comment_starting_on_first_column ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.comment.format_source_code", this.comment_format_source ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.comment.indent_parameter_description", this.comment_indent_parameter_description ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.comment.indent_root_tags", this.comment_indent_root_tags ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.comment.insert_new_line_before_root_tags", this.comment_insert_empty_line_before_root_tags ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.comment.insert_new_line_for_parameter", this.comment_insert_new_line_for_parameter ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.comment.preserve_white_space_between_code_and_line_comments", this.comment_preserve_white_space_between_code_and_line_comments ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.comment.line_length", Integer.toString(this.comment_line_length));
        options.put("org.eclipse.jdt.core.formatter.continuation_indentation", Integer.toString(this.continuation_indentation));
        options.put("org.eclipse.jdt.core.formatter.continuation_indentation_for_array_initializer", Integer.toString(this.continuation_indentation_for_array_initializer));
        options.put("org.eclipse.jdt.core.formatter.blank_lines_after_imports", Integer.toString(this.blank_lines_after_imports));
        options.put("org.eclipse.jdt.core.formatter.blank_lines_after_package", Integer.toString(this.blank_lines_after_package));
        options.put("org.eclipse.jdt.core.formatter.blank_lines_before_field", Integer.toString(this.blank_lines_before_field));
        options.put("org.eclipse.jdt.core.formatter.blank_lines_before_first_class_body_declaration", Integer.toString(this.blank_lines_before_first_class_body_declaration));
        options.put("org.eclipse.jdt.core.formatter.blank_lines_before_imports", Integer.toString(this.blank_lines_before_imports));
        options.put("org.eclipse.jdt.core.formatter.blank_lines_before_member_type", Integer.toString(this.blank_lines_before_member_type));
        options.put("org.eclipse.jdt.core.formatter.blank_lines_before_method", Integer.toString(this.blank_lines_before_method));
        options.put("org.eclipse.jdt.core.formatter.blank_lines_before_new_chunk", Integer.toString(this.blank_lines_before_new_chunk));
        options.put("org.eclipse.jdt.core.formatter.blank_lines_before_package", Integer.toString(this.blank_lines_before_package));
        options.put("org.eclipse.jdt.core.formatter.blank_lines_between_import_groups", Integer.toString(this.blank_lines_between_import_groups));
        options.put("org.eclipse.jdt.core.formatter.blank_lines_between_type_declarations", Integer.toString(this.blank_lines_between_type_declarations));
        options.put("org.eclipse.jdt.core.formatter.number_of_blank_lines_at_beginning_of_method_body", Integer.toString(this.blank_lines_at_beginning_of_method_body));
        options.put("org.eclipse.jdt.core.formatter.indent_statements_compare_to_block", this.indent_statements_compare_to_block ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.indent_statements_compare_to_body", this.indent_statements_compare_to_body ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_annotation_declaration_header", this.indent_body_declarations_compare_to_annotation_declaration_header ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_enum_constant_header", this.indent_body_declarations_compare_to_enum_constant_header ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_enum_declaration_header", this.indent_body_declarations_compare_to_enum_declaration_header ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_type_header", this.indent_body_declarations_compare_to_type_header ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.indent_breaks_compare_to_cases", this.indent_breaks_compare_to_cases ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.indent_empty_lines", this.indent_empty_lines ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.indent_switchstatements_compare_to_cases", this.indent_switchstatements_compare_to_cases ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.indent_switchstatements_compare_to_switch", this.indent_switchstatements_compare_to_switch ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.indentation.size", Integer.toString(this.indentation_size));
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_type", this.insert_new_line_after_annotation_on_type ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_field", this.insert_new_line_after_annotation_on_field ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_method", this.insert_new_line_after_annotation_on_method ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_package", this.insert_new_line_after_annotation_on_package ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_parameter", this.insert_new_line_after_annotation_on_parameter ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_local_variable", this.insert_new_line_after_annotation_on_local_variable ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_after_opening_brace_in_array_initializer", this.insert_new_line_after_opening_brace_in_array_initializer ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_at_end_of_file_if_missing", this.insert_new_line_at_end_of_file_if_missing ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_before_catch_in_try_statement", this.insert_new_line_before_catch_in_try_statement ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_before_closing_brace_in_array_initializer", this.insert_new_line_before_closing_brace_in_array_initializer ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_before_else_in_if_statement", this.insert_new_line_before_else_in_if_statement ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_before_finally_in_try_statement", this.insert_new_line_before_finally_in_try_statement ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_before_while_in_do_statement", this.insert_new_line_before_while_in_do_statement ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_in_empty_anonymous_type_declaration", this.insert_new_line_in_empty_anonymous_type_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_in_empty_block", this.insert_new_line_in_empty_block ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_in_empty_annotation_declaration", this.insert_new_line_in_empty_annotation_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_in_empty_enum_constant", this.insert_new_line_in_empty_enum_constant ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_in_empty_enum_declaration", this.insert_new_line_in_empty_enum_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_in_empty_method_body", this.insert_new_line_in_empty_method_body ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_in_empty_type_declaration", this.insert_new_line_in_empty_type_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_new_line_after_label", this.insert_new_line_after_label ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_and_in_type_parameter", this.insert_space_after_and_in_type_parameter ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_assignment_operator", this.insert_space_after_assignment_operator ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_at_in_annotation", this.insert_space_after_at_in_annotation ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_at_in_annotation_type_declaration", this.insert_space_after_at_in_annotation_type_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_binary_operator", this.insert_space_after_binary_operator ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_closing_angle_bracket_in_type_arguments", this.insert_space_after_closing_angle_bracket_in_type_arguments ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_closing_angle_bracket_in_type_parameters", this.insert_space_after_closing_angle_bracket_in_type_parameters ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_closing_paren_in_cast", this.insert_space_after_closing_paren_in_cast ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_closing_brace_in_block", this.insert_space_after_closing_brace_in_block ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_colon_in_assert", this.insert_space_after_colon_in_assert ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_colon_in_case", this.insert_space_after_colon_in_case ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_colon_in_conditional", this.insert_space_after_colon_in_conditional ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_colon_in_for", this.insert_space_after_colon_in_for ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_colon_in_labeled_statement", this.insert_space_after_colon_in_labeled_statement ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_allocation_expression", this.insert_space_after_comma_in_allocation_expression ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_annotation", this.insert_space_after_comma_in_annotation ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_array_initializer", this.insert_space_after_comma_in_array_initializer ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_constructor_declaration_parameters", this.insert_space_after_comma_in_constructor_declaration_parameters ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_constructor_declaration_throws", this.insert_space_after_comma_in_constructor_declaration_throws ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_enum_constant_arguments", this.insert_space_after_comma_in_enum_constant_arguments ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_enum_declarations", this.insert_space_after_comma_in_enum_declarations ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_explicitconstructorcall_arguments", this.insert_space_after_comma_in_explicit_constructor_call_arguments ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_for_increments", this.insert_space_after_comma_in_for_increments ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_for_inits", this.insert_space_after_comma_in_for_inits ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_method_invocation_arguments", this.insert_space_after_comma_in_method_invocation_arguments ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_method_declaration_parameters", this.insert_space_after_comma_in_method_declaration_parameters ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_method_declaration_throws", this.insert_space_after_comma_in_method_declaration_throws ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_multiple_field_declarations", this.insert_space_after_comma_in_multiple_field_declarations ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_multiple_local_declarations", this.insert_space_after_comma_in_multiple_local_declarations ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_parameterized_type_reference", this.insert_space_after_comma_in_parameterized_type_reference ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_superinterfaces", this.insert_space_after_comma_in_superinterfaces ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_type_arguments", this.insert_space_after_comma_in_type_arguments ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_type_parameters", this.insert_space_after_comma_in_type_parameters ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_bracket_in_array_allocation_expression", this.insert_space_after_opening_bracket_in_array_allocation_expression ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_ellipsis", this.insert_space_after_ellipsis ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_angle_bracket_in_parameterized_type_reference", this.insert_space_after_opening_angle_bracket_in_parameterized_type_reference ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_angle_bracket_in_type_arguments", this.insert_space_after_opening_angle_bracket_in_type_arguments ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_angle_bracket_in_type_parameters", this.insert_space_after_opening_angle_bracket_in_type_parameters ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_bracket_in_array_reference", this.insert_space_after_opening_bracket_in_array_reference ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_brace_in_array_initializer", this.insert_space_after_opening_brace_in_array_initializer ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_annotation", this.insert_space_after_opening_paren_in_annotation ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_cast", this.insert_space_after_opening_paren_in_cast ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_catch", this.insert_space_after_opening_paren_in_catch ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_constructor_declaration", this.insert_space_after_opening_paren_in_constructor_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_enum_constant", this.insert_space_after_opening_paren_in_enum_constant ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_for", this.insert_space_after_opening_paren_in_for ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_if", this.insert_space_after_opening_paren_in_if ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_method_declaration", this.insert_space_after_opening_paren_in_method_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_method_invocation", this.insert_space_after_opening_paren_in_method_invocation ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_parenthesized_expression", this.insert_space_after_opening_paren_in_parenthesized_expression ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_switch", this.insert_space_after_opening_paren_in_switch ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_synchronized", this.insert_space_after_opening_paren_in_synchronized ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_try", this.insert_space_after_opening_paren_in_try ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_while", this.insert_space_after_opening_paren_in_while ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_postfix_operator", this.insert_space_after_postfix_operator ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_prefix_operator", this.insert_space_after_prefix_operator ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_question_in_conditional", this.insert_space_after_question_in_conditional ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_question_in_wildcard", this.insert_space_after_question_in_wilcard ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_semicolon_in_for", this.insert_space_after_semicolon_in_for ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_semicolon_in_try_resources", this.insert_space_after_semicolon_in_try_resources ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_after_unary_operator", this.insert_space_after_unary_operator ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_and_in_type_parameter", this.insert_space_before_and_in_type_parameter ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_at_in_annotation_type_declaration", this.insert_space_before_at_in_annotation_type_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_assignment_operator", this.insert_space_before_assignment_operator ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_binary_operator", this.insert_space_before_binary_operator ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_angle_bracket_in_parameterized_type_reference", this.insert_space_before_closing_angle_bracket_in_parameterized_type_reference ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_angle_bracket_in_type_arguments", this.insert_space_before_closing_angle_bracket_in_type_arguments ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_angle_bracket_in_type_parameters", this.insert_space_before_closing_angle_bracket_in_type_parameters ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_brace_in_array_initializer", this.insert_space_before_closing_brace_in_array_initializer ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_bracket_in_array_allocation_expression", this.insert_space_before_closing_bracket_in_array_allocation_expression ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_bracket_in_array_reference", this.insert_space_before_closing_bracket_in_array_reference ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_annotation", this.insert_space_before_closing_paren_in_annotation ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_cast", this.insert_space_before_closing_paren_in_cast ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_catch", this.insert_space_before_closing_paren_in_catch ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_constructor_declaration", this.insert_space_before_closing_paren_in_constructor_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_enum_constant", this.insert_space_before_closing_paren_in_enum_constant ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_for", this.insert_space_before_closing_paren_in_for ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_if", this.insert_space_before_closing_paren_in_if ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_method_declaration", this.insert_space_before_closing_paren_in_method_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_method_invocation", this.insert_space_before_closing_paren_in_method_invocation ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_parenthesized_expression", this.insert_space_before_closing_paren_in_parenthesized_expression ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_switch", this.insert_space_before_closing_paren_in_switch ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_synchronized", this.insert_space_before_closing_paren_in_synchronized ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_try", this.insert_space_before_closing_paren_in_try ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_while", this.insert_space_before_closing_paren_in_while ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_colon_in_assert", this.insert_space_before_colon_in_assert ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_colon_in_case", this.insert_space_before_colon_in_case ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_colon_in_conditional", this.insert_space_before_colon_in_conditional ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_colon_in_default", this.insert_space_before_colon_in_default ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_colon_in_for", this.insert_space_before_colon_in_for ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_colon_in_labeled_statement", this.insert_space_before_colon_in_labeled_statement ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_allocation_expression", this.insert_space_before_comma_in_allocation_expression ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_annotation", this.insert_space_before_comma_in_annotation ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_array_initializer", this.insert_space_before_comma_in_array_initializer ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_constructor_declaration_parameters", this.insert_space_before_comma_in_constructor_declaration_parameters ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_constructor_declaration_throws", this.insert_space_before_comma_in_constructor_declaration_throws ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_enum_constant_arguments", this.insert_space_before_comma_in_enum_constant_arguments ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_enum_declarations", this.insert_space_before_comma_in_enum_declarations ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_explicitconstructorcall_arguments", this.insert_space_before_comma_in_explicit_constructor_call_arguments ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_for_increments", this.insert_space_before_comma_in_for_increments ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_for_inits", this.insert_space_before_comma_in_for_inits ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_method_invocation_arguments", this.insert_space_before_comma_in_method_invocation_arguments ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_method_declaration_parameters", this.insert_space_before_comma_in_method_declaration_parameters ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_method_declaration_throws", this.insert_space_before_comma_in_method_declaration_throws ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_multiple_field_declarations", this.insert_space_before_comma_in_multiple_field_declarations ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_multiple_local_declarations", this.insert_space_before_comma_in_multiple_local_declarations ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_superinterfaces", this.insert_space_before_comma_in_superinterfaces ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_type_arguments", this.insert_space_before_comma_in_type_arguments ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_type_parameters", this.insert_space_before_comma_in_type_parameters ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_parameterized_type_reference", this.insert_space_before_comma_in_parameterized_type_reference ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_ellipsis", this.insert_space_before_ellipsis ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_angle_bracket_in_parameterized_type_reference", this.insert_space_before_opening_angle_bracket_in_parameterized_type_reference ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_angle_bracket_in_type_arguments", this.insert_space_before_opening_angle_bracket_in_type_arguments ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_angle_bracket_in_type_parameters", this.insert_space_before_opening_angle_bracket_in_type_parameters ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_annotation_type_declaration", this.insert_space_before_opening_brace_in_annotation_type_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_anonymous_type_declaration", this.insert_space_before_opening_brace_in_anonymous_type_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_array_initializer", this.insert_space_before_opening_brace_in_array_initializer ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_block", this.insert_space_before_opening_brace_in_block ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_constructor_declaration", this.insert_space_before_opening_brace_in_constructor_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_enum_constant", this.insert_space_before_opening_brace_in_enum_constant ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_enum_declaration", this.insert_space_before_opening_brace_in_enum_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_method_declaration", this.insert_space_before_opening_brace_in_method_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_type_declaration", this.insert_space_before_opening_brace_in_type_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_bracket_in_array_allocation_expression", this.insert_space_before_opening_bracket_in_array_allocation_expression ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_bracket_in_array_reference", this.insert_space_before_opening_bracket_in_array_reference ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_bracket_in_array_type_reference", this.insert_space_before_opening_bracket_in_array_type_reference ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_annotation", this.insert_space_before_opening_paren_in_annotation ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_annotation_type_member_declaration", this.insert_space_before_opening_paren_in_annotation_type_member_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_catch", this.insert_space_before_opening_paren_in_catch ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_constructor_declaration", this.insert_space_before_opening_paren_in_constructor_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_enum_constant", this.insert_space_before_opening_paren_in_enum_constant ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_for", this.insert_space_before_opening_paren_in_for ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_if", this.insert_space_before_opening_paren_in_if ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_method_invocation", this.insert_space_before_opening_paren_in_method_invocation ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_method_declaration", this.insert_space_before_opening_paren_in_method_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_switch", this.insert_space_before_opening_paren_in_switch ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_switch", this.insert_space_before_opening_brace_in_switch ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_synchronized", this.insert_space_before_opening_paren_in_synchronized ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_try", this.insert_space_before_opening_paren_in_try ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_parenthesized_expression", this.insert_space_before_opening_paren_in_parenthesized_expression ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_while", this.insert_space_before_opening_paren_in_while ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_parenthesized_expression_in_return", this.insert_space_before_parenthesized_expression_in_return ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_parenthesized_expression_in_throw", this.insert_space_before_parenthesized_expression_in_throw ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_postfix_operator", this.insert_space_before_postfix_operator ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_prefix_operator", this.insert_space_before_prefix_operator ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_question_in_conditional", this.insert_space_before_question_in_conditional ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_question_in_wildcard", this.insert_space_before_question_in_wilcard ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_semicolon", this.insert_space_before_semicolon ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_semicolon_in_for", this.insert_space_before_semicolon_in_for ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_semicolon_in_try_resources", this.insert_space_before_semicolon_in_try_resources ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_before_unary_operator", this.insert_space_before_unary_operator ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_between_brackets_in_array_type_reference", this.insert_space_between_brackets_in_array_type_reference ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_between_empty_braces_in_array_initializer", this.insert_space_between_empty_braces_in_array_initializer ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_between_empty_brackets_in_array_allocation_expression", this.insert_space_between_empty_brackets_in_array_allocation_expression ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_annotation_type_member_declaration", this.insert_space_between_empty_parens_in_annotation_type_member_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_constructor_declaration", this.insert_space_between_empty_parens_in_constructor_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_enum_constant", this.insert_space_between_empty_parens_in_enum_constant ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_method_declaration", this.insert_space_between_empty_parens_in_method_declaration ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_method_invocation", this.insert_space_between_empty_parens_in_method_invocation ? "insert" : "do not insert");
        options.put("org.eclipse.jdt.core.formatter.compact_else_if", this.compact_else_if ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.format_guardian_clause_on_one_line", this.keep_guardian_clause_on_one_line ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.keep_else_statement_on_same_line", this.keep_else_statement_on_same_line ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.keep_empty_array_initializer_on_one_line", this.keep_empty_array_initializer_on_one_line ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.keep_imple_if_on_one_line", this.keep_simple_if_on_one_line ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.keep_then_statement_on_same_line", this.keep_then_statement_on_same_line ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.never_indent_block_comments_on_first_column", this.never_indent_block_comments_on_first_column ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.never_indent_line_comments_on_first_column", this.never_indent_line_comments_on_first_column ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.number_of_empty_lines_to_preserve", Integer.toString(this.number_of_empty_lines_to_preserve));
        options.put("org.eclipse.jdt.core.formatter.join_wrapped_lines", this.join_wrapped_lines ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.join_lines_in_comments", this.join_lines_in_comments ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.put_empty_statement_on_new_line", this.put_empty_statement_on_new_line ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.lineSplit", Integer.toString(this.page_width));
        switch (this.tab_char) {
            case 2: {
                options.put("org.eclipse.jdt.core.formatter.tabulation.char", "space");
                break;
            }
            case 1: {
                options.put("org.eclipse.jdt.core.formatter.tabulation.char", "tab");
                break;
            }
            case 4: {
                options.put("org.eclipse.jdt.core.formatter.tabulation.char", "mixed");
            }
        }
        options.put("org.eclipse.jdt.core.formatter.tabulation.size", Integer.toString(this.tab_size));
        options.put("org.eclipse.jdt.core.formatter.use_tabs_only_for_leading_indentations", this.use_tabs_only_for_leading_indentations ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.wrap_before_binary_operator", this.wrap_before_binary_operator ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.wrap_before_or_operator_multicatch", this.wrap_before_or_operator_multicatch ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.disabling_tag", this.disabling_tag == null ? Util.EMPTY_STRING : new String(this.disabling_tag));
        options.put("org.eclipse.jdt.core.formatter.enabling_tag", this.enabling_tag == null ? Util.EMPTY_STRING : new String(this.enabling_tag));
        options.put("org.eclipse.jdt.core.formatter.use_on_off_tags", this.use_tags ? "true" : "false");
        options.put("org.eclipse.jdt.core.formatter.wrap_outer_expressions_when_nested", this.wrap_outer_expressions_when_nested ? "true" : "false");
        return options;
    }

    /*
     * WARNING - void declaration
     */
    public void set(Map settings) {
        void wrapWrapOuterExpressionsWhenNestedOption;
        void enableTagOption;
        Object stringValue;
        void disableTagOption;
        void useTags;
        void wrapBeforeOrOperatorMulticatchOption;
        void wrapBeforeBinaryOperatorOption;
        void useTabOption;
        void pageWidthOption;
        void useTabsOnlyForLeadingIndentationsOption;
        void tabSizeOption;
        void putEmptyStatementOnNewLineOption;
        void joinWrappedLinesOption;
        void joinLinesInCommentsOption;
        void numberOfEmptyLinesToPreserveOption;
        void neverIndentLineCommentOnFirstColumnOption;
        void neverIndentBlockCommentOnFirstColumnOption;
        void keepThenStatementOnSameLineOption;
        void keepSimpleIfOnOneLineOption;
        Object keepEmptyArrayInitializerOnOneLineOption;
        Object keepElseStatementOnSameLineOption;
        Object keepGuardianClauseOnOneLineOption;
        Object compactElseIfOption;
        Object insertSpaceBetweenEmptyParensInMethodInvocationOption;
        Object insertSpaceBetweenEmptyParensInMethodDeclarationOption;
        Object insertSpaceBetweenEmptyParensInEnumConstantOption;
        Object insertSpaceBetweenEmptyParensInAnnotationTypeMemberDeclarationOption;
        Object insertSpaceBetweenEmptyParensInConstructorDeclarationOption;
        Object insertSpaceBetweenEmptyBracketsInArrayAllocationExpressionOption;
        Object insertSpaceBetweenEmptyBracesInArrayInitializerOption;
        Object insertSpaceBetweenBracketsInArrayTypeReferenceOption;
        Object insertSpaceBeforeUnaryOperatorOption;
        Object insertSpaceBeforeSemicolonInTryOption;
        Object insertSpaceBeforeSemicolonInForOption;
        Object insertSpaceBeforeSemicolonOption;
        Object insertSpaceBeforeQuestionInWildcardOption;
        Object insertSpaceBeforeQuestionInConditionalOption;
        Object insertSpaceBeforePrefixOperatorOption;
        Object insertSpaceBeforePostfixOperatorOption;
        Object insertSpaceBeforeParenthesizedExpressionInThrowOption;
        Object insertSpaceBeforeParenthesizedExpressionInReturnOption;
        Object insertSpaceBeforeOpeningParenInWhileOption;
        Object insertSpaceBeforeOpeningParenInParenthesizedExpressionOption;
        Object insertSpaceBeforeOpeningParenInTryOption;
        Object insertSpaceBeforeOpeningParenInSynchronizedOption;
        Object insertSpaceBeforeOpeningBraceInSwitchOption;
        Object insertSpaceBeforeOpeningParenInSwitchOption;
        Object insertSpaceBeforeOpeningParenInMethodDeclarationOption;
        Object insertSpaceBeforeOpeningParenInMethodInvocationOption;
        Object insertSpaceBeforeOpeningParenInIfOption;
        Object insertSpaceBeforeOpeningParenInForOption;
        Object insertSpaceBeforeOpeningParenInEnumConstantOption;
        Object insertSpaceBeforeOpeningParenInConstructorDeclarationOption;
        Object insertSpaceBeforeOpeningParenInCatchOption;
        Object insertSpaceBeforeOpeningParenInAnnotationTypeMemberDeclarationOption;
        Object insertSpaceBeforeOpeningParenInAnnotationOption;
        Object insertSpaceBeforeOpeningBracketInArrayTypeReferenceOption;
        Object insertSpaceBeforeOpeningBracketInArrayReferenceOption;
        Object insertSpaceBeforeOpeningBracketInArrayAllocationExpressionOption;
        Object insertSpaceBeforeOpeningBraceInTypeDeclarationOption;
        Object insertSpaceBeforeOpeningBraceInMethodDeclarationOption;
        Object insertSpaceBeforeOpeningBraceInEnumConstantOption;
        Object insertSpaceBeforeOpeningBraceInEnumDeclarationOption;
        Object insertSpaceBeforeOpeningBraceInConstructorDeclarationOption;
        Object insertSpaceBeforeOpeningBraceInBlockOption;
        Object insertSpaceBeforeOpeningBraceInArrayInitializerOption;
        Object insertSpaceBeforeOpeningBraceInAnonymousTypeDeclarationOption;
        Object insertSpaceBeforeOpeningBraceInAnnotationTypeDeclarationOption;
        Object insertSpaceBeforeOpeningAngleBrackerInTypeParametersOption;
        Object insertSpaceBeforeOpeningAngleBrackerInTypeArgumentsOption;
        Object insertSpaceBeforeOpeningAngleBrackerInParameterizedTypeReferenceOption;
        Object insertSpaceBeforeEllipsisOption;
        Object insertSpaceBeforeCommaInTypeParametersOption;
        Object insertSpaceBeforeCommaInTypeArgumentsOption;
        Object insertSpaceBeforeCommaInSuperinterfacesOption;
        Object insertSpaceBeforeCommaInParameterizedTypeReferenceOption;
        Object insertSpaceBeforeCommaInMultipleLocalDeclarationsOption;
        Object insertSpaceBeforeCommaInMultipleFieldDeclarationsOption;
        Object insertSpaceBeforeCommaInMethodDeclarationThrowsOption;
        Object insertSpaceBeforeCommaInMethodDeclarationParametersOption;
        Object insertSpaceBeforeCommaInMethodInvocationArgumentsOption;
        Object insertSpaceBeforeCommaInForInitsOption;
        Object insertSpaceBeforeCommaInForIncrementsOption;
        Object insertSpaceBeforeCommaInExplicitConstructorCallArgumentsOption;
        Object insertSpaceBeforeCommaInEnumDeclarationsOption;
        Object insertSpaceBeforeCommaInEnumConstantArgumentsOption;
        Object insertSpaceBeforeCommaInConstructorDeclarationThrowsOption;
        Object insertSpaceBeforeCommaInConstructorDeclarationParametersOption;
        Object insertSpaceBeforeCommaInArrayInitializerOption;
        Object insertSpaceBeforeCommaInAnnotationOption;
        Object insertSpaceBeforeCommaInAllocationExpressionOption;
        Object insertSpaceBeforeColonInLabeledStatementOption;
        Object insertSpaceBeforeColonInForOption;
        Object insertSpaceBeforeColonInDefaultOption;
        Object insertSpaceBeforeColonInConditionalOption;
        Object insertSpaceBeforeColonInCaseOption;
        Object insertSpaceBeforeColonInAssertOption;
        Object insertSpaceBeforeClosingParenInWhileOption;
        Object insertSpaceBeforeClosingParenInTryOption;
        Object insertSpaceBeforeClosingParenInSynchronizedOption;
        Object insertSpaceBeforeClosingParenInSwitchOption;
        Object insertSpaceBeforeClosingParenInParenthesizedExpressionOption;
        Object insertSpaceBeforeClosingParenInMethodInvocationOption;
        Object insertSpaceBeforeClosingParenInMethodDeclarationOption;
        Object insertSpaceBeforeClosingParenInIfOption;
        Object insertSpaceBeforeClosingParenInForOption;
        Object insertSpaceBeforeClosingParenInEnumConstantOption;
        Object insertSpaceBeforeClosingParenInConstructorDeclarationOption;
        Object insertSpaceBeforeClosingParenInCatchOption;
        Object insertSpaceBeforeClosingParenInCastOption;
        Object insertSpaceBeforeClosingParenInAnnotationOption;
        Object insertSpaceBeforeClosingBracketInArrayReferenceOption;
        Object insertSpaceBeforeClosingBracketInArrayAllocationExpressionOption;
        Object insertSpaceBeforeClosingBraceInArrayInitializerOption;
        Object insertSpaceBeforeClosingAngleBracketInTypeParametersOption;
        Object insertSpaceBeforeClosingAngleBracketInTypeArgumentsOption;
        Object insertSpaceBeforeClosingAngleBracketInParameterizedTypeReferenceOption;
        Object insertSpaceBeforeBinaryOperatorOption;
        Object insertSpaceBeforeAssignmentOperatorOption;
        Object insertSpaceBeforeAtInAnnotationTypeDeclarationOption;
        Object insertSpaceBeforeAndInWildcardOption;
        Object insertSpaceAfterUnaryOperatorOption;
        Object insertSpaceAfterSemicolonInTryOption;
        Object insertSpaceAfterSemicolonInForOption;
        Object insertSpaceAfterQuestionInWildcardOption;
        Object insertSpaceAfterQuestionInConditionalOption;
        Object insertSpaceAfterPrefixOperatorOption;
        Object insertSpaceAfterPostfixOperatorOption;
        Object insertSpaceAfterOpeningParenInWhileOption;
        Object insertSpaceAfterOpeningParenInTryOption;
        Object insertSpaceAfterOpeningParenInSynchronizedOption;
        Object insertSpaceAfterOpeningParenInSwitchOption;
        Object insertSpaceAfterOpeningParenInParenthesizedExpressionOption;
        Object insertSpaceAfterOpeningParenInMethodInvocationOption;
        Object insertSpaceAfterOpeningParenInMethodDeclarationOption;
        Object insertSpaceAfterOpeningParenInIfOption;
        Object insertSpaceAfterOpeningParenInForOption;
        Object insertSpaceAfterOpeningParenInEnumConstantOption;
        Object insertSpaceAfterOpeningParenInConstructorDeclarationOption;
        Object insertSpaceAfterOpeningParenInCatchOption;
        Object insertSpaceAfterOpeningParenInCastOption;
        Object insertSpaceAfterOpeningParenInAnnotationOption;
        Object insertSpaceAfterOpeningBraceInArrayInitializerOption;
        Object insertSpaceAfterOpeningBracketInArrayReferenceOption;
        Object insertSpaceAfterOpeningBracketInArrayAllocationExpressionOption;
        Object insertSpaceAfterOpeningAngleBracketInTypeParametersOption;
        Object insertSpaceAfterOpeningAngleBracketInTypeArgumentsOption;
        Object insertSpaceAfterOpeningAngleBracketInParameterizedTypeReferenceOption;
        Object insertSpaceAfterEllipsisOption;
        Object insertSpaceAfterCommaInTypeParametersOption;
        Object insertSpaceAfterCommaInTypeArgumentsOption;
        Object insertSpaceAfterCommaInSuperinterfacesOption;
        Object insertSpaceAfterCommaInParameterizedTypeReferenceOption;
        Object insertSpaceAfterCommaInMultipleLocalDeclarationsOption;
        Object insertSpaceAfterCommaInMultipleFieldDeclarationsOption;
        Object insertSpaceAfterCommaInMethodDeclarationThrowsOption;
        Object insertSpaceAfterCommaInMethodDeclarationParametersOption;
        Object insertSpaceAfterCommaInMethodInvocationArgumentsOption;
        Object insertSpaceAfterCommaInForInitsOption;
        Object insertSpaceAfterCommaInForIncrementsOption;
        Object insertSpaceAfterCommaInExplicitConstructorCallArgumentsOption;
        Object insertSpaceAfterCommaInEnumDeclarationsOption;
        Object insertSpaceAfterCommaInEnumConstantArgumentsOption;
        Object insertSpaceAfterCommaInConstructorDeclarationThrowsOption;
        Object insertSpaceAfterCommaInConstructorDeclarationParametersOption;
        Object insertSpaceAfterCommaInArrayInitializerOption;
        Object insertSpaceAfterCommaInAnnotationOption;
        Object insertSpaceAfterCommaInAllocationExpressionOption;
        Object insertSpaceAfterColonInLabeledStatementOption;
        Object insertSpaceAfterColonInForOption;
        Object insertSpaceAfterColonInConditionalOption;
        Object insertSpaceAfterColonInCaseOption;
        Object insertSpaceAfterColonInAssertOption;
        Object insertSpaceAfterClosingBraceInBlockOption;
        Object insertSpaceAfterClosingParenInCastOption;
        Object insertSpaceAfterClosingAngleBracketInTypeParametersOption;
        Object insertSpaceAfterClosingAngleBracketInTypeArgumentsOption;
        Object insertSpaceAfterBinaryOperatorOption;
        Object insertSpaceAfterAtInAnnotationTypeDeclarationOption;
        Object insertSpaceAfterAtInAnnotationOption;
        Object insertSpaceAfterAssignmentOperatorOption;
        Object insertSpaceAfterAndInWildcardOption;
        Object insertNewLineAfterLabelOption;
        Object insertNewLineInEmptyTypeDeclarationOption;
        Object insertNewLineInEmptyMethodBodyOption;
        Object insertNewLineInEmptyEnumDeclarationOption;
        Object insertNewLineInEmptyEnumConstantOption;
        Object insertNewLineInEmptyAnnotationDeclarationOption;
        Object insertNewLineInEmptyBlockOption;
        Object insertNewLineInEmptyAnonymousTypeDeclarationOption;
        Object insertNewLineBeforeWhileInDoStatementOption;
        Object insertNewLineBeforeFinallyInTryStatementOption;
        Object insertNewLineBeforeElseInIfStatementOption;
        Object insertNewLineBeforeClosingBraceInArrayInitializerOption;
        Object insertNewLineBeforeCatchInTryStatementOption;
        Object insertNewLineAtEndOfFileIfMissingOption;
        Object insertNewLineAfterOpeningBraceInArrayInitializerOption;
        Object indentationSizeOption;
        Object indentSwitchstatementsCompareToSwitchOption;
        Object indentSwitchstatementsCompareToCasesOption;
        Object indentEmptyLinesOption;
        Object indentBreaksCompareToCasesOption;
        Object indentBodyDeclarationsCompareToTypeHeaderOption;
        Object indentBodyDeclarationsCompareToEnumDeclarationHeaderOption;
        Object indentBodyDeclarationsCompareToEnumConstantHeaderOption;
        Object indentBodyDeclarationsCompareToAnnotationDeclarationHeaderOption;
        Object indentStatementsCompareToBodyOption;
        Object indentStatementsCompareToBlockOption;
        Object commentNewLinesAtJavadocBoundariesOption;
        Object commentNewLinesAtBlockBoundariesOption;
        Object commentLineLengthOption;
        Object commentPreserveWhiteSpaceBetweenCodeAndLineCommentsOption;
        Object commentInsertNewLineForParameterOption;
        Object commentInsertEmptyLineBeforeRootTagsOption;
        Object commentIndentRootTagsOption;
        Object commentIndentParameterDescriptionOption;
        Object commentFormatSourceOption;
        Object commentFormatHtmlOption;
        Object commentFormatHeaderOption;
        Object formatLineCommentStartingOnFirstColumnOption;
        Object commentFormatLineCommentOption;
        Object commentFormatBlockCommentOption;
        Object blankLinesAtBeginningOfMethodBodyOption;
        Object blankLinesBetweenTypeDeclarationsOption;
        Object blankLinesBetweenImportGroupsOption;
        Object blankLinesBeforePackageOption;
        Object blankLinesBeforeNewChunkOption;
        Object blankLinesBeforeMethodOption;
        Object blankLinesBeforeMemberTypeOption;
        Object blankLinesBeforeImportsOption;
        Object blankLinesBeforeFirstClassBodyDeclarationOption;
        Object blankLinesBeforeFieldOption;
        Object blankLinesAfterPackageOption;
        Object blankLinesAfterImportsOption;
        Object continuationIndentationForArrayInitializerOption;
        Object continuationIndentationOption;
        Object bracePositionForTypeDeclarationOption;
        Object bracePositionForSwitchOption;
        Object bracePositionForMethodDeclarationOption;
        Object bracePositionForEnumDeclarationOption;
        Object bracePositionForEnumConstantOption;
        Object bracePositionForConstructorDeclarationOption;
        Object bracePositionForBlockInCaseOption;
        Object bracePositionForBlockOption;
        Object bracePositionForArrayInitializerOption;
        Object bracePositionForAnonymousTypeDeclarationOption;
        Object bracePositionForAnnotationTypeDeclarationOption;
        Object alignTypeMembersOnColumnsOption;
        Object alignmentForUnionTypeInMulticatch;
        Object alignmentForThrowsClauseInMethodDeclarationOption;
        Object alignmentForThrowsClauseInConstructorDeclarationOption;
        Object alignmentForSuperinterfacesInTypeDeclarationOption;
        Object alignmentForSuperinterfacesInEnumDeclarationOption;
        Object alignmentForSuperclassInTypeDeclarationOption;
        Object alignmentForSelectorInMethodInvocationOption;
        Object alignmentForResourcesInTry;
        Object alignmentForParametersInMethodDeclarationOption;
        Object alignmentForParametersInConstructorDeclarationOption;
        Object alignmentForMultipleFieldsOption;
        Object alignmentForMethodDeclarationOption;
        Object alignmentForExpressionsInArrayInitializerOption;
        Object alignmentForEnumConstantsOption;
        Object alignmentForConditionalExpressionOption;
        Object alignmentForCompactIfOption;
        Object alignmentForBinaryExpressionOption;
        Object alignmentForAssignmentOption;
        Object alignmentForArgumentsInQualifiedAllocationExpressionOption;
        Object alignmentForArgumentsInMethodInvocationOption;
        Object alignmentForArgumentsInExplicitConstructorCallOption;
        Object alignmentForArgumentsInEnumConstantOption;
        Object alignmentForArgumentsInAnnotationOption;
        Object alignmentForArgumentsInAllocationExpressionOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_arguments_in_allocation_expression");
        if (alignmentForArgumentsInAllocationExpressionOption != null) {
            try {
                this.alignment_for_arguments_in_allocation_expression = Integer.parseInt((String)alignmentForArgumentsInAllocationExpressionOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_arguments_in_allocation_expression = 16;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_arguments_in_allocation_expression = 16;
            }
        }
        if ((alignmentForArgumentsInAnnotationOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_arguments_in_annotation")) != null) {
            try {
                this.alignment_for_arguments_in_annotation = Integer.parseInt((String)alignmentForArgumentsInAnnotationOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_arguments_in_annotation = 0;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_arguments_in_annotation = 0;
            }
        }
        if ((alignmentForArgumentsInEnumConstantOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_arguments_in_enum_constant")) != null) {
            try {
                this.alignment_for_arguments_in_enum_constant = Integer.parseInt((String)alignmentForArgumentsInEnumConstantOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_arguments_in_enum_constant = 16;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_arguments_in_enum_constant = 16;
            }
        }
        if ((alignmentForArgumentsInExplicitConstructorCallOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_arguments_in_explicit_constructor_call")) != null) {
            try {
                this.alignment_for_arguments_in_explicit_constructor_call = Integer.parseInt((String)alignmentForArgumentsInExplicitConstructorCallOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_arguments_in_explicit_constructor_call = 16;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_arguments_in_explicit_constructor_call = 16;
            }
        }
        if ((alignmentForArgumentsInMethodInvocationOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_arguments_in_method_invocation")) != null) {
            try {
                this.alignment_for_arguments_in_method_invocation = Integer.parseInt((String)alignmentForArgumentsInMethodInvocationOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_arguments_in_method_invocation = 16;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_arguments_in_method_invocation = 16;
            }
        }
        if ((alignmentForArgumentsInQualifiedAllocationExpressionOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_arguments_in_qualified_allocation_expression")) != null) {
            try {
                this.alignment_for_arguments_in_qualified_allocation_expression = Integer.parseInt((String)alignmentForArgumentsInQualifiedAllocationExpressionOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_arguments_in_qualified_allocation_expression = 16;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_arguments_in_qualified_allocation_expression = 16;
            }
        }
        if ((alignmentForAssignmentOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_assignment")) != null) {
            try {
                this.alignment_for_assignment = Integer.parseInt((String)alignmentForAssignmentOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_assignment = 48;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_assignment = 48;
            }
        }
        if ((alignmentForBinaryExpressionOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_binary_expression")) != null) {
            try {
                this.alignment_for_binary_expression = Integer.parseInt((String)alignmentForBinaryExpressionOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_binary_expression = 16;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_binary_expression = 16;
            }
        }
        if ((alignmentForCompactIfOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_compact_if")) != null) {
            try {
                this.alignment_for_compact_if = Integer.parseInt((String)alignmentForCompactIfOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_compact_if = 52;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_compact_if = 52;
            }
        }
        if ((alignmentForConditionalExpressionOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_conditional_expression")) != null) {
            try {
                this.alignment_for_conditional_expression = Integer.parseInt((String)alignmentForConditionalExpressionOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_conditional_expression = 48;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_conditional_expression = 48;
            }
        }
        if ((alignmentForEnumConstantsOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_enum_constants")) != null) {
            try {
                this.alignment_for_enum_constants = Integer.parseInt((String)alignmentForEnumConstantsOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_enum_constants = 0;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_enum_constants = 0;
            }
        }
        if ((alignmentForExpressionsInArrayInitializerOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_expressions_in_array_initializer")) != null) {
            try {
                this.alignment_for_expressions_in_array_initializer = Integer.parseInt((String)alignmentForExpressionsInArrayInitializerOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_expressions_in_array_initializer = 16;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_expressions_in_array_initializer = 16;
            }
        }
        if ((alignmentForMethodDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_method_declaration")) != null) {
            try {
                this.alignment_for_method_declaration = Integer.parseInt((String)alignmentForMethodDeclarationOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_method_declaration = 16;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_method_declaration = 16;
            }
        }
        if ((alignmentForMultipleFieldsOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_multiple_fields")) != null) {
            try {
                this.alignment_for_multiple_fields = Integer.parseInt((String)alignmentForMultipleFieldsOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_multiple_fields = 16;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_multiple_fields = 16;
            }
        }
        if ((alignmentForParametersInConstructorDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_parameters_in_constructor_declaration")) != null) {
            try {
                this.alignment_for_parameters_in_constructor_declaration = Integer.parseInt((String)alignmentForParametersInConstructorDeclarationOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_parameters_in_constructor_declaration = 16;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_parameters_in_constructor_declaration = 16;
            }
        }
        if ((alignmentForParametersInMethodDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_parameters_in_method_declaration")) != null) {
            try {
                this.alignment_for_parameters_in_method_declaration = Integer.parseInt((String)alignmentForParametersInMethodDeclarationOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_parameters_in_method_declaration = 16;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_parameters_in_method_declaration = 16;
            }
        }
        if ((alignmentForResourcesInTry = settings.get("org.eclipse.jdt.core.formatter.alignment_for_resources_in_try")) != null) {
            try {
                this.alignment_for_resources_in_try = Integer.parseInt((String)alignmentForResourcesInTry);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_resources_in_try = 80;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_resources_in_try = 80;
            }
        }
        if ((alignmentForSelectorInMethodInvocationOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_selector_in_method_invocation")) != null) {
            try {
                this.alignment_for_selector_in_method_invocation = Integer.parseInt((String)alignmentForSelectorInMethodInvocationOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_selector_in_method_invocation = 16;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_selector_in_method_invocation = 16;
            }
        }
        if ((alignmentForSuperclassInTypeDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_superclass_in_type_declaration")) != null) {
            try {
                this.alignment_for_superclass_in_type_declaration = Integer.parseInt((String)alignmentForSuperclassInTypeDeclarationOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_superclass_in_type_declaration = 64;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_superclass_in_type_declaration = 64;
            }
        }
        if ((alignmentForSuperinterfacesInEnumDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_superinterfaces_in_enum_declaration")) != null) {
            try {
                this.alignment_for_superinterfaces_in_enum_declaration = Integer.parseInt((String)alignmentForSuperinterfacesInEnumDeclarationOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_superinterfaces_in_enum_declaration = 64;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_superinterfaces_in_enum_declaration = 64;
            }
        }
        if ((alignmentForSuperinterfacesInTypeDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_superinterfaces_in_type_declaration")) != null) {
            try {
                this.alignment_for_superinterfaces_in_type_declaration = Integer.parseInt((String)alignmentForSuperinterfacesInTypeDeclarationOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_superinterfaces_in_type_declaration = 64;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_superinterfaces_in_type_declaration = 64;
            }
        }
        if ((alignmentForThrowsClauseInConstructorDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_throws_clause_in_constructor_declaration")) != null) {
            try {
                this.alignment_for_throws_clause_in_constructor_declaration = Integer.parseInt((String)alignmentForThrowsClauseInConstructorDeclarationOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_throws_clause_in_constructor_declaration = 16;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_throws_clause_in_constructor_declaration = 16;
            }
        }
        if ((alignmentForThrowsClauseInMethodDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.alignment_for_throws_clause_in_method_declaration")) != null) {
            try {
                this.alignment_for_throws_clause_in_method_declaration = Integer.parseInt((String)alignmentForThrowsClauseInMethodDeclarationOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_throws_clause_in_method_declaration = 16;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_throws_clause_in_method_declaration = 16;
            }
        }
        if ((alignmentForUnionTypeInMulticatch = settings.get("org.eclipse.jdt.core.formatter.alignment_for_union_type_in_multicatch")) != null) {
            try {
                this.alignment_for_union_type_in_multicatch = Integer.parseInt((String)alignmentForUnionTypeInMulticatch);
            }
            catch (NumberFormatException numberFormatException) {
                this.alignment_for_union_type_in_multicatch = 16;
            }
            catch (ClassCastException classCastException) {
                this.alignment_for_union_type_in_multicatch = 16;
            }
        }
        if ((alignTypeMembersOnColumnsOption = settings.get("org.eclipse.jdt.core.formatter.align_type_members_on_columns")) != null) {
            this.align_type_members_on_columns = "true".equals(alignTypeMembersOnColumnsOption);
        }
        if ((bracePositionForAnnotationTypeDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.brace_position_for_annotation_type_declaration")) != null) {
            try {
                this.brace_position_for_annotation_type_declaration = (String)bracePositionForAnnotationTypeDeclarationOption;
            }
            catch (ClassCastException classCastException) {
                this.brace_position_for_annotation_type_declaration = "end_of_line";
            }
        }
        if ((bracePositionForAnonymousTypeDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.brace_position_for_anonymous_type_declaration")) != null) {
            try {
                this.brace_position_for_anonymous_type_declaration = (String)bracePositionForAnonymousTypeDeclarationOption;
            }
            catch (ClassCastException classCastException) {
                this.brace_position_for_anonymous_type_declaration = "end_of_line";
            }
        }
        if ((bracePositionForArrayInitializerOption = settings.get("org.eclipse.jdt.core.formatter.brace_position_for_array_initializer")) != null) {
            try {
                this.brace_position_for_array_initializer = (String)bracePositionForArrayInitializerOption;
            }
            catch (ClassCastException classCastException) {
                this.brace_position_for_array_initializer = "end_of_line";
            }
        }
        if ((bracePositionForBlockOption = settings.get("org.eclipse.jdt.core.formatter.brace_position_for_block")) != null) {
            try {
                this.brace_position_for_block = (String)bracePositionForBlockOption;
            }
            catch (ClassCastException classCastException) {
                this.brace_position_for_block = "end_of_line";
            }
        }
        if ((bracePositionForBlockInCaseOption = settings.get("org.eclipse.jdt.core.formatter.brace_position_for_block_in_case")) != null) {
            try {
                this.brace_position_for_block_in_case = (String)bracePositionForBlockInCaseOption;
            }
            catch (ClassCastException classCastException) {
                this.brace_position_for_block_in_case = "end_of_line";
            }
        }
        if ((bracePositionForConstructorDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.brace_position_for_constructor_declaration")) != null) {
            try {
                this.brace_position_for_constructor_declaration = (String)bracePositionForConstructorDeclarationOption;
            }
            catch (ClassCastException classCastException) {
                this.brace_position_for_constructor_declaration = "end_of_line";
            }
        }
        if ((bracePositionForEnumConstantOption = settings.get("org.eclipse.jdt.core.formatter.brace_position_for_enum_constant")) != null) {
            try {
                this.brace_position_for_enum_constant = (String)bracePositionForEnumConstantOption;
            }
            catch (ClassCastException classCastException) {
                this.brace_position_for_enum_constant = "end_of_line";
            }
        }
        if ((bracePositionForEnumDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.brace_position_for_enum_declaration")) != null) {
            try {
                this.brace_position_for_enum_declaration = (String)bracePositionForEnumDeclarationOption;
            }
            catch (ClassCastException classCastException) {
                this.brace_position_for_enum_declaration = "end_of_line";
            }
        }
        if ((bracePositionForMethodDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.brace_position_for_method_declaration")) != null) {
            try {
                this.brace_position_for_method_declaration = (String)bracePositionForMethodDeclarationOption;
            }
            catch (ClassCastException classCastException) {
                this.brace_position_for_method_declaration = "end_of_line";
            }
        }
        if ((bracePositionForSwitchOption = settings.get("org.eclipse.jdt.core.formatter.brace_position_for_switch")) != null) {
            try {
                this.brace_position_for_switch = (String)bracePositionForSwitchOption;
            }
            catch (ClassCastException classCastException) {
                this.brace_position_for_switch = "end_of_line";
            }
        }
        if ((bracePositionForTypeDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.brace_position_for_type_declaration")) != null) {
            try {
                this.brace_position_for_type_declaration = (String)bracePositionForTypeDeclarationOption;
            }
            catch (ClassCastException classCastException) {
                this.brace_position_for_type_declaration = "end_of_line";
            }
        }
        if ((continuationIndentationOption = settings.get("org.eclipse.jdt.core.formatter.continuation_indentation")) != null) {
            try {
                this.continuation_indentation = Integer.parseInt((String)continuationIndentationOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.continuation_indentation = 2;
            }
            catch (ClassCastException classCastException) {
                this.continuation_indentation = 2;
            }
        }
        if ((continuationIndentationForArrayInitializerOption = settings.get("org.eclipse.jdt.core.formatter.continuation_indentation_for_array_initializer")) != null) {
            try {
                this.continuation_indentation_for_array_initializer = Integer.parseInt((String)continuationIndentationForArrayInitializerOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.continuation_indentation_for_array_initializer = 2;
            }
            catch (ClassCastException classCastException) {
                this.continuation_indentation_for_array_initializer = 2;
            }
        }
        if ((blankLinesAfterImportsOption = settings.get("org.eclipse.jdt.core.formatter.blank_lines_after_imports")) != null) {
            try {
                this.blank_lines_after_imports = Integer.parseInt((String)blankLinesAfterImportsOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.blank_lines_after_imports = 0;
            }
            catch (ClassCastException classCastException) {
                this.blank_lines_after_imports = 0;
            }
        }
        if ((blankLinesAfterPackageOption = settings.get("org.eclipse.jdt.core.formatter.blank_lines_after_package")) != null) {
            try {
                this.blank_lines_after_package = Integer.parseInt((String)blankLinesAfterPackageOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.blank_lines_after_package = 0;
            }
            catch (ClassCastException classCastException) {
                this.blank_lines_after_package = 0;
            }
        }
        if ((blankLinesBeforeFieldOption = settings.get("org.eclipse.jdt.core.formatter.blank_lines_before_field")) != null) {
            try {
                this.blank_lines_before_field = Integer.parseInt((String)blankLinesBeforeFieldOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.blank_lines_before_field = 0;
            }
            catch (ClassCastException classCastException) {
                this.blank_lines_before_field = 0;
            }
        }
        if ((blankLinesBeforeFirstClassBodyDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.blank_lines_before_first_class_body_declaration")) != null) {
            try {
                this.blank_lines_before_first_class_body_declaration = Integer.parseInt((String)blankLinesBeforeFirstClassBodyDeclarationOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.blank_lines_before_first_class_body_declaration = 0;
            }
            catch (ClassCastException classCastException) {
                this.blank_lines_before_first_class_body_declaration = 0;
            }
        }
        if ((blankLinesBeforeImportsOption = settings.get("org.eclipse.jdt.core.formatter.blank_lines_before_imports")) != null) {
            try {
                this.blank_lines_before_imports = Integer.parseInt((String)blankLinesBeforeImportsOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.blank_lines_before_imports = 0;
            }
            catch (ClassCastException classCastException) {
                this.blank_lines_before_imports = 0;
            }
        }
        if ((blankLinesBeforeMemberTypeOption = settings.get("org.eclipse.jdt.core.formatter.blank_lines_before_member_type")) != null) {
            try {
                this.blank_lines_before_member_type = Integer.parseInt((String)blankLinesBeforeMemberTypeOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.blank_lines_before_member_type = 0;
            }
            catch (ClassCastException classCastException) {
                this.blank_lines_before_member_type = 0;
            }
        }
        if ((blankLinesBeforeMethodOption = settings.get("org.eclipse.jdt.core.formatter.blank_lines_before_method")) != null) {
            try {
                this.blank_lines_before_method = Integer.parseInt((String)blankLinesBeforeMethodOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.blank_lines_before_method = 0;
            }
            catch (ClassCastException classCastException) {
                this.blank_lines_before_method = 0;
            }
        }
        if ((blankLinesBeforeNewChunkOption = settings.get("org.eclipse.jdt.core.formatter.blank_lines_before_new_chunk")) != null) {
            try {
                this.blank_lines_before_new_chunk = Integer.parseInt((String)blankLinesBeforeNewChunkOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.blank_lines_before_new_chunk = 0;
            }
            catch (ClassCastException classCastException) {
                this.blank_lines_before_new_chunk = 0;
            }
        }
        if ((blankLinesBeforePackageOption = settings.get("org.eclipse.jdt.core.formatter.blank_lines_before_package")) != null) {
            try {
                this.blank_lines_before_package = Integer.parseInt((String)blankLinesBeforePackageOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.blank_lines_before_package = 0;
            }
            catch (ClassCastException classCastException) {
                this.blank_lines_before_package = 0;
            }
        }
        if ((blankLinesBetweenImportGroupsOption = settings.get("org.eclipse.jdt.core.formatter.blank_lines_between_import_groups")) != null) {
            try {
                this.blank_lines_between_import_groups = Integer.parseInt((String)blankLinesBetweenImportGroupsOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.blank_lines_between_import_groups = 1;
            }
            catch (ClassCastException classCastException) {
                this.blank_lines_between_import_groups = 1;
            }
        }
        if ((blankLinesBetweenTypeDeclarationsOption = settings.get("org.eclipse.jdt.core.formatter.blank_lines_between_type_declarations")) != null) {
            try {
                this.blank_lines_between_type_declarations = Integer.parseInt((String)blankLinesBetweenTypeDeclarationsOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.blank_lines_between_type_declarations = 0;
            }
            catch (ClassCastException classCastException) {
                this.blank_lines_between_type_declarations = 0;
            }
        }
        if ((blankLinesAtBeginningOfMethodBodyOption = settings.get("org.eclipse.jdt.core.formatter.number_of_blank_lines_at_beginning_of_method_body")) != null) {
            try {
                this.blank_lines_at_beginning_of_method_body = Integer.parseInt((String)blankLinesAtBeginningOfMethodBodyOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.blank_lines_at_beginning_of_method_body = 0;
            }
            catch (ClassCastException classCastException) {
                this.blank_lines_at_beginning_of_method_body = 0;
            }
        }
        this.setDeprecatedOptions(settings);
        Object commentFormatJavadocCommentOption = settings.get("org.eclipse.jdt.core.formatter.comment.format_javadoc_comments");
        if (commentFormatJavadocCommentOption != null) {
            this.comment_format_javadoc_comment = "true".equals(commentFormatJavadocCommentOption);
        }
        if ((commentFormatBlockCommentOption = settings.get("org.eclipse.jdt.core.formatter.comment.format_block_comments")) != null) {
            this.comment_format_block_comment = "true".equals(commentFormatBlockCommentOption);
        }
        if ((commentFormatLineCommentOption = settings.get("org.eclipse.jdt.core.formatter.comment.format_line_comments")) != null) {
            this.comment_format_line_comment = "true".equals(commentFormatLineCommentOption);
        }
        if ((formatLineCommentStartingOnFirstColumnOption = settings.get("org.eclipse.jdt.core.formatter.format_line_comment_starting_on_first_column")) != null) {
            this.comment_format_line_comment_starting_on_first_column = "true".equals(formatLineCommentStartingOnFirstColumnOption);
        }
        if ((commentFormatHeaderOption = settings.get("org.eclipse.jdt.core.formatter.comment.format_header")) != null) {
            this.comment_format_header = "true".equals(commentFormatHeaderOption);
        }
        if ((commentFormatHtmlOption = settings.get("org.eclipse.jdt.core.formatter.comment.format_html")) != null) {
            this.comment_format_html = "true".equals(commentFormatHtmlOption);
        }
        if ((commentFormatSourceOption = settings.get("org.eclipse.jdt.core.formatter.comment.format_source_code")) != null) {
            this.comment_format_source = "true".equals(commentFormatSourceOption);
        }
        if ((commentIndentParameterDescriptionOption = settings.get("org.eclipse.jdt.core.formatter.comment.indent_parameter_description")) != null) {
            this.comment_indent_parameter_description = "true".equals(commentIndentParameterDescriptionOption);
        }
        if ((commentIndentRootTagsOption = settings.get("org.eclipse.jdt.core.formatter.comment.indent_root_tags")) != null) {
            this.comment_indent_root_tags = "true".equals(commentIndentRootTagsOption);
        }
        if ((commentInsertEmptyLineBeforeRootTagsOption = settings.get("org.eclipse.jdt.core.formatter.comment.insert_new_line_before_root_tags")) != null) {
            this.comment_insert_empty_line_before_root_tags = "insert".equals(commentInsertEmptyLineBeforeRootTagsOption);
        }
        if ((commentInsertNewLineForParameterOption = settings.get("org.eclipse.jdt.core.formatter.comment.insert_new_line_for_parameter")) != null) {
            this.comment_insert_new_line_for_parameter = "insert".equals(commentInsertNewLineForParameterOption);
        }
        if ((commentPreserveWhiteSpaceBetweenCodeAndLineCommentsOption = settings.get("org.eclipse.jdt.core.formatter.comment.preserve_white_space_between_code_and_line_comments")) != null) {
            this.comment_preserve_white_space_between_code_and_line_comments = "true".equals(commentPreserveWhiteSpaceBetweenCodeAndLineCommentsOption);
        }
        if ((commentLineLengthOption = settings.get("org.eclipse.jdt.core.formatter.comment.line_length")) != null) {
            try {
                this.comment_line_length = Integer.parseInt((String)commentLineLengthOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.comment_line_length = 80;
            }
            catch (ClassCastException classCastException) {
                this.comment_line_length = 80;
            }
        }
        if ((commentNewLinesAtBlockBoundariesOption = settings.get("org.eclipse.jdt.core.formatter.comment.new_lines_at_block_boundaries")) != null) {
            this.comment_new_lines_at_block_boundaries = "true".equals(commentNewLinesAtBlockBoundariesOption);
        }
        if ((commentNewLinesAtJavadocBoundariesOption = settings.get("org.eclipse.jdt.core.formatter.comment.new_lines_at_javadoc_boundaries")) != null) {
            this.comment_new_lines_at_javadoc_boundaries = "true".equals(commentNewLinesAtJavadocBoundariesOption);
        }
        if ((indentStatementsCompareToBlockOption = settings.get("org.eclipse.jdt.core.formatter.indent_statements_compare_to_block")) != null) {
            this.indent_statements_compare_to_block = "true".equals(indentStatementsCompareToBlockOption);
        }
        if ((indentStatementsCompareToBodyOption = settings.get("org.eclipse.jdt.core.formatter.indent_statements_compare_to_body")) != null) {
            this.indent_statements_compare_to_body = "true".equals(indentStatementsCompareToBodyOption);
        }
        if ((indentBodyDeclarationsCompareToAnnotationDeclarationHeaderOption = settings.get("org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_annotation_declaration_header")) != null) {
            this.indent_body_declarations_compare_to_annotation_declaration_header = "true".equals(indentBodyDeclarationsCompareToAnnotationDeclarationHeaderOption);
        }
        if ((indentBodyDeclarationsCompareToEnumConstantHeaderOption = settings.get("org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_enum_constant_header")) != null) {
            this.indent_body_declarations_compare_to_enum_constant_header = "true".equals(indentBodyDeclarationsCompareToEnumConstantHeaderOption);
        }
        if ((indentBodyDeclarationsCompareToEnumDeclarationHeaderOption = settings.get("org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_enum_declaration_header")) != null) {
            this.indent_body_declarations_compare_to_enum_declaration_header = "true".equals(indentBodyDeclarationsCompareToEnumDeclarationHeaderOption);
        }
        if ((indentBodyDeclarationsCompareToTypeHeaderOption = settings.get("org.eclipse.jdt.core.formatter.indent_body_declarations_compare_to_type_header")) != null) {
            this.indent_body_declarations_compare_to_type_header = "true".equals(indentBodyDeclarationsCompareToTypeHeaderOption);
        }
        if ((indentBreaksCompareToCasesOption = settings.get("org.eclipse.jdt.core.formatter.indent_breaks_compare_to_cases")) != null) {
            this.indent_breaks_compare_to_cases = "true".equals(indentBreaksCompareToCasesOption);
        }
        if ((indentEmptyLinesOption = settings.get("org.eclipse.jdt.core.formatter.indent_empty_lines")) != null) {
            this.indent_empty_lines = "true".equals(indentEmptyLinesOption);
        }
        if ((indentSwitchstatementsCompareToCasesOption = settings.get("org.eclipse.jdt.core.formatter.indent_switchstatements_compare_to_cases")) != null) {
            this.indent_switchstatements_compare_to_cases = "true".equals(indentSwitchstatementsCompareToCasesOption);
        }
        if ((indentSwitchstatementsCompareToSwitchOption = settings.get("org.eclipse.jdt.core.formatter.indent_switchstatements_compare_to_switch")) != null) {
            this.indent_switchstatements_compare_to_switch = "true".equals(indentSwitchstatementsCompareToSwitchOption);
        }
        if ((indentationSizeOption = settings.get("org.eclipse.jdt.core.formatter.indentation.size")) != null) {
            try {
                this.indentation_size = Integer.parseInt((String)indentationSizeOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.indentation_size = 4;
            }
            catch (ClassCastException classCastException) {
                this.indentation_size = 4;
            }
        }
        if ((insertNewLineAfterOpeningBraceInArrayInitializerOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_after_opening_brace_in_array_initializer")) != null) {
            this.insert_new_line_after_opening_brace_in_array_initializer = "insert".equals(insertNewLineAfterOpeningBraceInArrayInitializerOption);
        }
        if ((insertNewLineAtEndOfFileIfMissingOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_at_end_of_file_if_missing")) != null) {
            this.insert_new_line_at_end_of_file_if_missing = "insert".equals(insertNewLineAtEndOfFileIfMissingOption);
        }
        if ((insertNewLineBeforeCatchInTryStatementOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_before_catch_in_try_statement")) != null) {
            this.insert_new_line_before_catch_in_try_statement = "insert".equals(insertNewLineBeforeCatchInTryStatementOption);
        }
        if ((insertNewLineBeforeClosingBraceInArrayInitializerOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_before_closing_brace_in_array_initializer")) != null) {
            this.insert_new_line_before_closing_brace_in_array_initializer = "insert".equals(insertNewLineBeforeClosingBraceInArrayInitializerOption);
        }
        if ((insertNewLineBeforeElseInIfStatementOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_before_else_in_if_statement")) != null) {
            this.insert_new_line_before_else_in_if_statement = "insert".equals(insertNewLineBeforeElseInIfStatementOption);
        }
        if ((insertNewLineBeforeFinallyInTryStatementOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_before_finally_in_try_statement")) != null) {
            this.insert_new_line_before_finally_in_try_statement = "insert".equals(insertNewLineBeforeFinallyInTryStatementOption);
        }
        if ((insertNewLineBeforeWhileInDoStatementOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_before_while_in_do_statement")) != null) {
            this.insert_new_line_before_while_in_do_statement = "insert".equals(insertNewLineBeforeWhileInDoStatementOption);
        }
        if ((insertNewLineInEmptyAnonymousTypeDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_in_empty_anonymous_type_declaration")) != null) {
            this.insert_new_line_in_empty_anonymous_type_declaration = "insert".equals(insertNewLineInEmptyAnonymousTypeDeclarationOption);
        }
        if ((insertNewLineInEmptyBlockOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_in_empty_block")) != null) {
            this.insert_new_line_in_empty_block = "insert".equals(insertNewLineInEmptyBlockOption);
        }
        if ((insertNewLineInEmptyAnnotationDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_in_empty_annotation_declaration")) != null) {
            this.insert_new_line_in_empty_annotation_declaration = "insert".equals(insertNewLineInEmptyAnnotationDeclarationOption);
        }
        if ((insertNewLineInEmptyEnumConstantOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_in_empty_enum_constant")) != null) {
            this.insert_new_line_in_empty_enum_constant = "insert".equals(insertNewLineInEmptyEnumConstantOption);
        }
        if ((insertNewLineInEmptyEnumDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_in_empty_enum_declaration")) != null) {
            this.insert_new_line_in_empty_enum_declaration = "insert".equals(insertNewLineInEmptyEnumDeclarationOption);
        }
        if ((insertNewLineInEmptyMethodBodyOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_in_empty_method_body")) != null) {
            this.insert_new_line_in_empty_method_body = "insert".equals(insertNewLineInEmptyMethodBodyOption);
        }
        if ((insertNewLineInEmptyTypeDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_in_empty_type_declaration")) != null) {
            this.insert_new_line_in_empty_type_declaration = "insert".equals(insertNewLineInEmptyTypeDeclarationOption);
        }
        if ((insertNewLineAfterLabelOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_after_label")) != null) {
            this.insert_new_line_after_label = "insert".equals(insertNewLineAfterLabelOption);
        }
        if ((insertSpaceAfterAndInWildcardOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_and_in_type_parameter")) != null) {
            this.insert_space_after_and_in_type_parameter = "insert".equals(insertSpaceAfterAndInWildcardOption);
        }
        if ((insertSpaceAfterAssignmentOperatorOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_assignment_operator")) != null) {
            this.insert_space_after_assignment_operator = "insert".equals(insertSpaceAfterAssignmentOperatorOption);
        }
        if ((insertSpaceAfterAtInAnnotationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_at_in_annotation")) != null) {
            this.insert_space_after_at_in_annotation = "insert".equals(insertSpaceAfterAtInAnnotationOption);
        }
        if ((insertSpaceAfterAtInAnnotationTypeDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_at_in_annotation_type_declaration")) != null) {
            this.insert_space_after_at_in_annotation_type_declaration = "insert".equals(insertSpaceAfterAtInAnnotationTypeDeclarationOption);
        }
        if ((insertSpaceAfterBinaryOperatorOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_binary_operator")) != null) {
            this.insert_space_after_binary_operator = "insert".equals(insertSpaceAfterBinaryOperatorOption);
        }
        if ((insertSpaceAfterClosingAngleBracketInTypeArgumentsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_closing_angle_bracket_in_type_arguments")) != null) {
            this.insert_space_after_closing_angle_bracket_in_type_arguments = "insert".equals(insertSpaceAfterClosingAngleBracketInTypeArgumentsOption);
        }
        if ((insertSpaceAfterClosingAngleBracketInTypeParametersOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_closing_angle_bracket_in_type_parameters")) != null) {
            this.insert_space_after_closing_angle_bracket_in_type_parameters = "insert".equals(insertSpaceAfterClosingAngleBracketInTypeParametersOption);
        }
        if ((insertSpaceAfterClosingParenInCastOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_closing_paren_in_cast")) != null) {
            this.insert_space_after_closing_paren_in_cast = "insert".equals(insertSpaceAfterClosingParenInCastOption);
        }
        if ((insertSpaceAfterClosingBraceInBlockOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_closing_brace_in_block")) != null) {
            this.insert_space_after_closing_brace_in_block = "insert".equals(insertSpaceAfterClosingBraceInBlockOption);
        }
        if ((insertSpaceAfterColonInAssertOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_colon_in_assert")) != null) {
            this.insert_space_after_colon_in_assert = "insert".equals(insertSpaceAfterColonInAssertOption);
        }
        if ((insertSpaceAfterColonInCaseOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_colon_in_case")) != null) {
            this.insert_space_after_colon_in_case = "insert".equals(insertSpaceAfterColonInCaseOption);
        }
        if ((insertSpaceAfterColonInConditionalOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_colon_in_conditional")) != null) {
            this.insert_space_after_colon_in_conditional = "insert".equals(insertSpaceAfterColonInConditionalOption);
        }
        if ((insertSpaceAfterColonInForOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_colon_in_for")) != null) {
            this.insert_space_after_colon_in_for = "insert".equals(insertSpaceAfterColonInForOption);
        }
        if ((insertSpaceAfterColonInLabeledStatementOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_colon_in_labeled_statement")) != null) {
            this.insert_space_after_colon_in_labeled_statement = "insert".equals(insertSpaceAfterColonInLabeledStatementOption);
        }
        if ((insertSpaceAfterCommaInAllocationExpressionOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_allocation_expression")) != null) {
            this.insert_space_after_comma_in_allocation_expression = "insert".equals(insertSpaceAfterCommaInAllocationExpressionOption);
        }
        if ((insertSpaceAfterCommaInAnnotationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_annotation")) != null) {
            this.insert_space_after_comma_in_annotation = "insert".equals(insertSpaceAfterCommaInAnnotationOption);
        }
        if ((insertSpaceAfterCommaInArrayInitializerOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_array_initializer")) != null) {
            this.insert_space_after_comma_in_array_initializer = "insert".equals(insertSpaceAfterCommaInArrayInitializerOption);
        }
        if ((insertSpaceAfterCommaInConstructorDeclarationParametersOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_constructor_declaration_parameters")) != null) {
            this.insert_space_after_comma_in_constructor_declaration_parameters = "insert".equals(insertSpaceAfterCommaInConstructorDeclarationParametersOption);
        }
        if ((insertSpaceAfterCommaInConstructorDeclarationThrowsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_constructor_declaration_throws")) != null) {
            this.insert_space_after_comma_in_constructor_declaration_throws = "insert".equals(insertSpaceAfterCommaInConstructorDeclarationThrowsOption);
        }
        if ((insertSpaceAfterCommaInEnumConstantArgumentsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_enum_constant_arguments")) != null) {
            this.insert_space_after_comma_in_enum_constant_arguments = "insert".equals(insertSpaceAfterCommaInEnumConstantArgumentsOption);
        }
        if ((insertSpaceAfterCommaInEnumDeclarationsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_enum_declarations")) != null) {
            this.insert_space_after_comma_in_enum_declarations = "insert".equals(insertSpaceAfterCommaInEnumDeclarationsOption);
        }
        if ((insertSpaceAfterCommaInExplicitConstructorCallArgumentsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_explicitconstructorcall_arguments")) != null) {
            this.insert_space_after_comma_in_explicit_constructor_call_arguments = "insert".equals(insertSpaceAfterCommaInExplicitConstructorCallArgumentsOption);
        }
        if ((insertSpaceAfterCommaInForIncrementsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_for_increments")) != null) {
            this.insert_space_after_comma_in_for_increments = "insert".equals(insertSpaceAfterCommaInForIncrementsOption);
        }
        if ((insertSpaceAfterCommaInForInitsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_for_inits")) != null) {
            this.insert_space_after_comma_in_for_inits = "insert".equals(insertSpaceAfterCommaInForInitsOption);
        }
        if ((insertSpaceAfterCommaInMethodInvocationArgumentsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_method_invocation_arguments")) != null) {
            this.insert_space_after_comma_in_method_invocation_arguments = "insert".equals(insertSpaceAfterCommaInMethodInvocationArgumentsOption);
        }
        if ((insertSpaceAfterCommaInMethodDeclarationParametersOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_method_declaration_parameters")) != null) {
            this.insert_space_after_comma_in_method_declaration_parameters = "insert".equals(insertSpaceAfterCommaInMethodDeclarationParametersOption);
        }
        if ((insertSpaceAfterCommaInMethodDeclarationThrowsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_method_declaration_throws")) != null) {
            this.insert_space_after_comma_in_method_declaration_throws = "insert".equals(insertSpaceAfterCommaInMethodDeclarationThrowsOption);
        }
        if ((insertSpaceAfterCommaInMultipleFieldDeclarationsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_multiple_field_declarations")) != null) {
            this.insert_space_after_comma_in_multiple_field_declarations = "insert".equals(insertSpaceAfterCommaInMultipleFieldDeclarationsOption);
        }
        if ((insertSpaceAfterCommaInMultipleLocalDeclarationsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_multiple_local_declarations")) != null) {
            this.insert_space_after_comma_in_multiple_local_declarations = "insert".equals(insertSpaceAfterCommaInMultipleLocalDeclarationsOption);
        }
        if ((insertSpaceAfterCommaInParameterizedTypeReferenceOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_parameterized_type_reference")) != null) {
            this.insert_space_after_comma_in_parameterized_type_reference = "insert".equals(insertSpaceAfterCommaInParameterizedTypeReferenceOption);
        }
        if ((insertSpaceAfterCommaInSuperinterfacesOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_superinterfaces")) != null) {
            this.insert_space_after_comma_in_superinterfaces = "insert".equals(insertSpaceAfterCommaInSuperinterfacesOption);
        }
        if ((insertSpaceAfterCommaInTypeArgumentsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_type_arguments")) != null) {
            this.insert_space_after_comma_in_type_arguments = "insert".equals(insertSpaceAfterCommaInTypeArgumentsOption);
        }
        if ((insertSpaceAfterCommaInTypeParametersOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_comma_in_type_parameters")) != null) {
            this.insert_space_after_comma_in_type_parameters = "insert".equals(insertSpaceAfterCommaInTypeParametersOption);
        }
        if ((insertSpaceAfterEllipsisOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_ellipsis")) != null) {
            this.insert_space_after_ellipsis = "insert".equals(insertSpaceAfterEllipsisOption);
        }
        if ((insertSpaceAfterOpeningAngleBracketInParameterizedTypeReferenceOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_angle_bracket_in_parameterized_type_reference")) != null) {
            this.insert_space_after_opening_angle_bracket_in_parameterized_type_reference = "insert".equals(insertSpaceAfterOpeningAngleBracketInParameterizedTypeReferenceOption);
        }
        if ((insertSpaceAfterOpeningAngleBracketInTypeArgumentsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_angle_bracket_in_type_arguments")) != null) {
            this.insert_space_after_opening_angle_bracket_in_type_arguments = "insert".equals(insertSpaceAfterOpeningAngleBracketInTypeArgumentsOption);
        }
        if ((insertSpaceAfterOpeningAngleBracketInTypeParametersOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_angle_bracket_in_type_parameters")) != null) {
            this.insert_space_after_opening_angle_bracket_in_type_parameters = "insert".equals(insertSpaceAfterOpeningAngleBracketInTypeParametersOption);
        }
        if ((insertSpaceAfterOpeningBracketInArrayAllocationExpressionOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_bracket_in_array_allocation_expression")) != null) {
            this.insert_space_after_opening_bracket_in_array_allocation_expression = "insert".equals(insertSpaceAfterOpeningBracketInArrayAllocationExpressionOption);
        }
        if ((insertSpaceAfterOpeningBracketInArrayReferenceOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_bracket_in_array_reference")) != null) {
            this.insert_space_after_opening_bracket_in_array_reference = "insert".equals(insertSpaceAfterOpeningBracketInArrayReferenceOption);
        }
        if ((insertSpaceAfterOpeningBraceInArrayInitializerOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_brace_in_array_initializer")) != null) {
            this.insert_space_after_opening_brace_in_array_initializer = "insert".equals(insertSpaceAfterOpeningBraceInArrayInitializerOption);
        }
        if ((insertSpaceAfterOpeningParenInAnnotationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_annotation")) != null) {
            this.insert_space_after_opening_paren_in_annotation = "insert".equals(insertSpaceAfterOpeningParenInAnnotationOption);
        }
        if ((insertSpaceAfterOpeningParenInCastOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_cast")) != null) {
            this.insert_space_after_opening_paren_in_cast = "insert".equals(insertSpaceAfterOpeningParenInCastOption);
        }
        if ((insertSpaceAfterOpeningParenInCatchOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_catch")) != null) {
            this.insert_space_after_opening_paren_in_catch = "insert".equals(insertSpaceAfterOpeningParenInCatchOption);
        }
        if ((insertSpaceAfterOpeningParenInConstructorDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_constructor_declaration")) != null) {
            this.insert_space_after_opening_paren_in_constructor_declaration = "insert".equals(insertSpaceAfterOpeningParenInConstructorDeclarationOption);
        }
        if ((insertSpaceAfterOpeningParenInEnumConstantOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_enum_constant")) != null) {
            this.insert_space_after_opening_paren_in_enum_constant = "insert".equals(insertSpaceAfterOpeningParenInEnumConstantOption);
        }
        if ((insertSpaceAfterOpeningParenInForOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_for")) != null) {
            this.insert_space_after_opening_paren_in_for = "insert".equals(insertSpaceAfterOpeningParenInForOption);
        }
        if ((insertSpaceAfterOpeningParenInIfOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_if")) != null) {
            this.insert_space_after_opening_paren_in_if = "insert".equals(insertSpaceAfterOpeningParenInIfOption);
        }
        if ((insertSpaceAfterOpeningParenInMethodDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_method_declaration")) != null) {
            this.insert_space_after_opening_paren_in_method_declaration = "insert".equals(insertSpaceAfterOpeningParenInMethodDeclarationOption);
        }
        if ((insertSpaceAfterOpeningParenInMethodInvocationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_method_invocation")) != null) {
            this.insert_space_after_opening_paren_in_method_invocation = "insert".equals(insertSpaceAfterOpeningParenInMethodInvocationOption);
        }
        if ((insertSpaceAfterOpeningParenInParenthesizedExpressionOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_parenthesized_expression")) != null) {
            this.insert_space_after_opening_paren_in_parenthesized_expression = "insert".equals(insertSpaceAfterOpeningParenInParenthesizedExpressionOption);
        }
        if ((insertSpaceAfterOpeningParenInSwitchOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_switch")) != null) {
            this.insert_space_after_opening_paren_in_switch = "insert".equals(insertSpaceAfterOpeningParenInSwitchOption);
        }
        if ((insertSpaceAfterOpeningParenInSynchronizedOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_synchronized")) != null) {
            this.insert_space_after_opening_paren_in_synchronized = "insert".equals(insertSpaceAfterOpeningParenInSynchronizedOption);
        }
        if ((insertSpaceAfterOpeningParenInTryOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_try")) != null) {
            this.insert_space_after_opening_paren_in_try = "insert".equals(insertSpaceAfterOpeningParenInTryOption);
        }
        if ((insertSpaceAfterOpeningParenInWhileOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_opening_paren_in_while")) != null) {
            this.insert_space_after_opening_paren_in_while = "insert".equals(insertSpaceAfterOpeningParenInWhileOption);
        }
        if ((insertSpaceAfterPostfixOperatorOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_postfix_operator")) != null) {
            this.insert_space_after_postfix_operator = "insert".equals(insertSpaceAfterPostfixOperatorOption);
        }
        if ((insertSpaceAfterPrefixOperatorOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_prefix_operator")) != null) {
            this.insert_space_after_prefix_operator = "insert".equals(insertSpaceAfterPrefixOperatorOption);
        }
        if ((insertSpaceAfterQuestionInConditionalOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_question_in_conditional")) != null) {
            this.insert_space_after_question_in_conditional = "insert".equals(insertSpaceAfterQuestionInConditionalOption);
        }
        if ((insertSpaceAfterQuestionInWildcardOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_question_in_wildcard")) != null) {
            this.insert_space_after_question_in_wilcard = "insert".equals(insertSpaceAfterQuestionInWildcardOption);
        }
        if ((insertSpaceAfterSemicolonInForOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_semicolon_in_for")) != null) {
            this.insert_space_after_semicolon_in_for = "insert".equals(insertSpaceAfterSemicolonInForOption);
        }
        if ((insertSpaceAfterSemicolonInTryOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_semicolon_in_try_resources")) != null) {
            this.insert_space_after_semicolon_in_try_resources = "insert".equals(insertSpaceAfterSemicolonInTryOption);
        }
        if ((insertSpaceAfterUnaryOperatorOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_after_unary_operator")) != null) {
            this.insert_space_after_unary_operator = "insert".equals(insertSpaceAfterUnaryOperatorOption);
        }
        if ((insertSpaceBeforeAndInWildcardOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_and_in_type_parameter")) != null) {
            this.insert_space_before_and_in_type_parameter = "insert".equals(insertSpaceBeforeAndInWildcardOption);
        }
        if ((insertSpaceBeforeAtInAnnotationTypeDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_at_in_annotation_type_declaration")) != null) {
            this.insert_space_before_at_in_annotation_type_declaration = "insert".equals(insertSpaceBeforeAtInAnnotationTypeDeclarationOption);
        }
        if ((insertSpaceBeforeAssignmentOperatorOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_assignment_operator")) != null) {
            this.insert_space_before_assignment_operator = "insert".equals(insertSpaceBeforeAssignmentOperatorOption);
        }
        if ((insertSpaceBeforeBinaryOperatorOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_binary_operator")) != null) {
            this.insert_space_before_binary_operator = "insert".equals(insertSpaceBeforeBinaryOperatorOption);
        }
        if ((insertSpaceBeforeClosingAngleBracketInParameterizedTypeReferenceOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_angle_bracket_in_parameterized_type_reference")) != null) {
            this.insert_space_before_closing_angle_bracket_in_parameterized_type_reference = "insert".equals(insertSpaceBeforeClosingAngleBracketInParameterizedTypeReferenceOption);
        }
        if ((insertSpaceBeforeClosingAngleBracketInTypeArgumentsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_angle_bracket_in_type_arguments")) != null) {
            this.insert_space_before_closing_angle_bracket_in_type_arguments = "insert".equals(insertSpaceBeforeClosingAngleBracketInTypeArgumentsOption);
        }
        if ((insertSpaceBeforeClosingAngleBracketInTypeParametersOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_angle_bracket_in_type_parameters")) != null) {
            this.insert_space_before_closing_angle_bracket_in_type_parameters = "insert".equals(insertSpaceBeforeClosingAngleBracketInTypeParametersOption);
        }
        if ((insertSpaceBeforeClosingBraceInArrayInitializerOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_brace_in_array_initializer")) != null) {
            this.insert_space_before_closing_brace_in_array_initializer = "insert".equals(insertSpaceBeforeClosingBraceInArrayInitializerOption);
        }
        if ((insertSpaceBeforeClosingBracketInArrayAllocationExpressionOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_bracket_in_array_allocation_expression")) != null) {
            this.insert_space_before_closing_bracket_in_array_allocation_expression = "insert".equals(insertSpaceBeforeClosingBracketInArrayAllocationExpressionOption);
        }
        if ((insertSpaceBeforeClosingBracketInArrayReferenceOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_bracket_in_array_reference")) != null) {
            this.insert_space_before_closing_bracket_in_array_reference = "insert".equals(insertSpaceBeforeClosingBracketInArrayReferenceOption);
        }
        if ((insertSpaceBeforeClosingParenInAnnotationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_annotation")) != null) {
            this.insert_space_before_closing_paren_in_annotation = "insert".equals(insertSpaceBeforeClosingParenInAnnotationOption);
        }
        if ((insertSpaceBeforeClosingParenInCastOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_cast")) != null) {
            this.insert_space_before_closing_paren_in_cast = "insert".equals(insertSpaceBeforeClosingParenInCastOption);
        }
        if ((insertSpaceBeforeClosingParenInCatchOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_catch")) != null) {
            this.insert_space_before_closing_paren_in_catch = "insert".equals(insertSpaceBeforeClosingParenInCatchOption);
        }
        if ((insertSpaceBeforeClosingParenInConstructorDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_constructor_declaration")) != null) {
            this.insert_space_before_closing_paren_in_constructor_declaration = "insert".equals(insertSpaceBeforeClosingParenInConstructorDeclarationOption);
        }
        if ((insertSpaceBeforeClosingParenInEnumConstantOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_enum_constant")) != null) {
            this.insert_space_before_closing_paren_in_enum_constant = "insert".equals(insertSpaceBeforeClosingParenInEnumConstantOption);
        }
        if ((insertSpaceBeforeClosingParenInForOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_for")) != null) {
            this.insert_space_before_closing_paren_in_for = "insert".equals(insertSpaceBeforeClosingParenInForOption);
        }
        if ((insertSpaceBeforeClosingParenInIfOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_if")) != null) {
            this.insert_space_before_closing_paren_in_if = "insert".equals(insertSpaceBeforeClosingParenInIfOption);
        }
        if ((insertSpaceBeforeClosingParenInMethodDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_method_declaration")) != null) {
            this.insert_space_before_closing_paren_in_method_declaration = "insert".equals(insertSpaceBeforeClosingParenInMethodDeclarationOption);
        }
        if ((insertSpaceBeforeClosingParenInMethodInvocationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_method_invocation")) != null) {
            this.insert_space_before_closing_paren_in_method_invocation = "insert".equals(insertSpaceBeforeClosingParenInMethodInvocationOption);
        }
        if ((insertSpaceBeforeClosingParenInParenthesizedExpressionOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_parenthesized_expression")) != null) {
            this.insert_space_before_closing_paren_in_parenthesized_expression = "insert".equals(insertSpaceBeforeClosingParenInParenthesizedExpressionOption);
        }
        if ((insertSpaceBeforeClosingParenInSwitchOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_switch")) != null) {
            this.insert_space_before_closing_paren_in_switch = "insert".equals(insertSpaceBeforeClosingParenInSwitchOption);
        }
        if ((insertSpaceBeforeClosingParenInSynchronizedOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_synchronized")) != null) {
            this.insert_space_before_closing_paren_in_synchronized = "insert".equals(insertSpaceBeforeClosingParenInSynchronizedOption);
        }
        if ((insertSpaceBeforeClosingParenInTryOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_try")) != null) {
            this.insert_space_before_closing_paren_in_try = "insert".equals(insertSpaceBeforeClosingParenInTryOption);
        }
        if ((insertSpaceBeforeClosingParenInWhileOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_closing_paren_in_while")) != null) {
            this.insert_space_before_closing_paren_in_while = "insert".equals(insertSpaceBeforeClosingParenInWhileOption);
        }
        if ((insertSpaceBeforeColonInAssertOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_colon_in_assert")) != null) {
            this.insert_space_before_colon_in_assert = "insert".equals(insertSpaceBeforeColonInAssertOption);
        }
        if ((insertSpaceBeforeColonInCaseOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_colon_in_case")) != null) {
            this.insert_space_before_colon_in_case = "insert".equals(insertSpaceBeforeColonInCaseOption);
        }
        if ((insertSpaceBeforeColonInConditionalOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_colon_in_conditional")) != null) {
            this.insert_space_before_colon_in_conditional = "insert".equals(insertSpaceBeforeColonInConditionalOption);
        }
        if ((insertSpaceBeforeColonInDefaultOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_colon_in_default")) != null) {
            this.insert_space_before_colon_in_default = "insert".equals(insertSpaceBeforeColonInDefaultOption);
        }
        if ((insertSpaceBeforeColonInForOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_colon_in_for")) != null) {
            this.insert_space_before_colon_in_for = "insert".equals(insertSpaceBeforeColonInForOption);
        }
        if ((insertSpaceBeforeColonInLabeledStatementOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_colon_in_labeled_statement")) != null) {
            this.insert_space_before_colon_in_labeled_statement = "insert".equals(insertSpaceBeforeColonInLabeledStatementOption);
        }
        if ((insertSpaceBeforeCommaInAllocationExpressionOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_allocation_expression")) != null) {
            this.insert_space_before_comma_in_allocation_expression = "insert".equals(insertSpaceBeforeCommaInAllocationExpressionOption);
        }
        if ((insertSpaceBeforeCommaInAnnotationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_annotation")) != null) {
            this.insert_space_before_comma_in_annotation = "insert".equals(insertSpaceBeforeCommaInAnnotationOption);
        }
        if ((insertSpaceBeforeCommaInArrayInitializerOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_array_initializer")) != null) {
            this.insert_space_before_comma_in_array_initializer = "insert".equals(insertSpaceBeforeCommaInArrayInitializerOption);
        }
        if ((insertSpaceBeforeCommaInConstructorDeclarationParametersOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_constructor_declaration_parameters")) != null) {
            this.insert_space_before_comma_in_constructor_declaration_parameters = "insert".equals(insertSpaceBeforeCommaInConstructorDeclarationParametersOption);
        }
        if ((insertSpaceBeforeCommaInConstructorDeclarationThrowsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_constructor_declaration_throws")) != null) {
            this.insert_space_before_comma_in_constructor_declaration_throws = "insert".equals(insertSpaceBeforeCommaInConstructorDeclarationThrowsOption);
        }
        if ((insertSpaceBeforeCommaInEnumConstantArgumentsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_enum_constant_arguments")) != null) {
            this.insert_space_before_comma_in_enum_constant_arguments = "insert".equals(insertSpaceBeforeCommaInEnumConstantArgumentsOption);
        }
        if ((insertSpaceBeforeCommaInEnumDeclarationsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_enum_declarations")) != null) {
            this.insert_space_before_comma_in_enum_declarations = "insert".equals(insertSpaceBeforeCommaInEnumDeclarationsOption);
        }
        if ((insertSpaceBeforeCommaInExplicitConstructorCallArgumentsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_explicitconstructorcall_arguments")) != null) {
            this.insert_space_before_comma_in_explicit_constructor_call_arguments = "insert".equals(insertSpaceBeforeCommaInExplicitConstructorCallArgumentsOption);
        }
        if ((insertSpaceBeforeCommaInForIncrementsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_for_increments")) != null) {
            this.insert_space_before_comma_in_for_increments = "insert".equals(insertSpaceBeforeCommaInForIncrementsOption);
        }
        if ((insertSpaceBeforeCommaInForInitsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_for_inits")) != null) {
            this.insert_space_before_comma_in_for_inits = "insert".equals(insertSpaceBeforeCommaInForInitsOption);
        }
        if ((insertSpaceBeforeCommaInMethodInvocationArgumentsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_method_invocation_arguments")) != null) {
            this.insert_space_before_comma_in_method_invocation_arguments = "insert".equals(insertSpaceBeforeCommaInMethodInvocationArgumentsOption);
        }
        if ((insertSpaceBeforeCommaInMethodDeclarationParametersOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_method_declaration_parameters")) != null) {
            this.insert_space_before_comma_in_method_declaration_parameters = "insert".equals(insertSpaceBeforeCommaInMethodDeclarationParametersOption);
        }
        if ((insertSpaceBeforeCommaInMethodDeclarationThrowsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_method_declaration_throws")) != null) {
            this.insert_space_before_comma_in_method_declaration_throws = "insert".equals(insertSpaceBeforeCommaInMethodDeclarationThrowsOption);
        }
        if ((insertSpaceBeforeCommaInMultipleFieldDeclarationsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_multiple_field_declarations")) != null) {
            this.insert_space_before_comma_in_multiple_field_declarations = "insert".equals(insertSpaceBeforeCommaInMultipleFieldDeclarationsOption);
        }
        if ((insertSpaceBeforeCommaInMultipleLocalDeclarationsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_multiple_local_declarations")) != null) {
            this.insert_space_before_comma_in_multiple_local_declarations = "insert".equals(insertSpaceBeforeCommaInMultipleLocalDeclarationsOption);
        }
        if ((insertSpaceBeforeCommaInParameterizedTypeReferenceOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_parameterized_type_reference")) != null) {
            this.insert_space_before_comma_in_parameterized_type_reference = "insert".equals(insertSpaceBeforeCommaInParameterizedTypeReferenceOption);
        }
        if ((insertSpaceBeforeCommaInSuperinterfacesOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_superinterfaces")) != null) {
            this.insert_space_before_comma_in_superinterfaces = "insert".equals(insertSpaceBeforeCommaInSuperinterfacesOption);
        }
        if ((insertSpaceBeforeCommaInTypeArgumentsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_type_arguments")) != null) {
            this.insert_space_before_comma_in_type_arguments = "insert".equals(insertSpaceBeforeCommaInTypeArgumentsOption);
        }
        if ((insertSpaceBeforeCommaInTypeParametersOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_comma_in_type_parameters")) != null) {
            this.insert_space_before_comma_in_type_parameters = "insert".equals(insertSpaceBeforeCommaInTypeParametersOption);
        }
        if ((insertSpaceBeforeEllipsisOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_ellipsis")) != null) {
            this.insert_space_before_ellipsis = "insert".equals(insertSpaceBeforeEllipsisOption);
        }
        if ((insertSpaceBeforeOpeningAngleBrackerInParameterizedTypeReferenceOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_angle_bracket_in_parameterized_type_reference")) != null) {
            this.insert_space_before_opening_angle_bracket_in_parameterized_type_reference = "insert".equals(insertSpaceBeforeOpeningAngleBrackerInParameterizedTypeReferenceOption);
        }
        if ((insertSpaceBeforeOpeningAngleBrackerInTypeArgumentsOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_angle_bracket_in_type_arguments")) != null) {
            this.insert_space_before_opening_angle_bracket_in_type_arguments = "insert".equals(insertSpaceBeforeOpeningAngleBrackerInTypeArgumentsOption);
        }
        if ((insertSpaceBeforeOpeningAngleBrackerInTypeParametersOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_angle_bracket_in_type_parameters")) != null) {
            this.insert_space_before_opening_angle_bracket_in_type_parameters = "insert".equals(insertSpaceBeforeOpeningAngleBrackerInTypeParametersOption);
        }
        if ((insertSpaceBeforeOpeningBraceInAnnotationTypeDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_annotation_type_declaration")) != null) {
            this.insert_space_before_opening_brace_in_annotation_type_declaration = "insert".equals(insertSpaceBeforeOpeningBraceInAnnotationTypeDeclarationOption);
        }
        if ((insertSpaceBeforeOpeningBraceInAnonymousTypeDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_anonymous_type_declaration")) != null) {
            this.insert_space_before_opening_brace_in_anonymous_type_declaration = "insert".equals(insertSpaceBeforeOpeningBraceInAnonymousTypeDeclarationOption);
        }
        if ((insertSpaceBeforeOpeningBraceInArrayInitializerOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_array_initializer")) != null) {
            this.insert_space_before_opening_brace_in_array_initializer = "insert".equals(insertSpaceBeforeOpeningBraceInArrayInitializerOption);
        }
        if ((insertSpaceBeforeOpeningBraceInBlockOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_block")) != null) {
            this.insert_space_before_opening_brace_in_block = "insert".equals(insertSpaceBeforeOpeningBraceInBlockOption);
        }
        if ((insertSpaceBeforeOpeningBraceInConstructorDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_constructor_declaration")) != null) {
            this.insert_space_before_opening_brace_in_constructor_declaration = "insert".equals(insertSpaceBeforeOpeningBraceInConstructorDeclarationOption);
        }
        if ((insertSpaceBeforeOpeningBraceInEnumDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_enum_declaration")) != null) {
            this.insert_space_before_opening_brace_in_enum_declaration = "insert".equals(insertSpaceBeforeOpeningBraceInEnumDeclarationOption);
        }
        if ((insertSpaceBeforeOpeningBraceInEnumConstantOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_enum_constant")) != null) {
            this.insert_space_before_opening_brace_in_enum_constant = "insert".equals(insertSpaceBeforeOpeningBraceInEnumConstantOption);
        }
        if ((insertSpaceBeforeOpeningBraceInMethodDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_method_declaration")) != null) {
            this.insert_space_before_opening_brace_in_method_declaration = "insert".equals(insertSpaceBeforeOpeningBraceInMethodDeclarationOption);
        }
        if ((insertSpaceBeforeOpeningBraceInTypeDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_type_declaration")) != null) {
            this.insert_space_before_opening_brace_in_type_declaration = "insert".equals(insertSpaceBeforeOpeningBraceInTypeDeclarationOption);
        }
        if ((insertSpaceBeforeOpeningBracketInArrayAllocationExpressionOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_bracket_in_array_allocation_expression")) != null) {
            this.insert_space_before_opening_bracket_in_array_allocation_expression = "insert".equals(insertSpaceBeforeOpeningBracketInArrayAllocationExpressionOption);
        }
        if ((insertSpaceBeforeOpeningBracketInArrayReferenceOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_bracket_in_array_reference")) != null) {
            this.insert_space_before_opening_bracket_in_array_reference = "insert".equals(insertSpaceBeforeOpeningBracketInArrayReferenceOption);
        }
        if ((insertSpaceBeforeOpeningBracketInArrayTypeReferenceOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_bracket_in_array_type_reference")) != null) {
            this.insert_space_before_opening_bracket_in_array_type_reference = "insert".equals(insertSpaceBeforeOpeningBracketInArrayTypeReferenceOption);
        }
        if ((insertSpaceBeforeOpeningParenInAnnotationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_annotation")) != null) {
            this.insert_space_before_opening_paren_in_annotation = "insert".equals(insertSpaceBeforeOpeningParenInAnnotationOption);
        }
        if ((insertSpaceBeforeOpeningParenInAnnotationTypeMemberDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_annotation_type_member_declaration")) != null) {
            this.insert_space_before_opening_paren_in_annotation_type_member_declaration = "insert".equals(insertSpaceBeforeOpeningParenInAnnotationTypeMemberDeclarationOption);
        }
        if ((insertSpaceBeforeOpeningParenInCatchOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_catch")) != null) {
            this.insert_space_before_opening_paren_in_catch = "insert".equals(insertSpaceBeforeOpeningParenInCatchOption);
        }
        if ((insertSpaceBeforeOpeningParenInConstructorDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_constructor_declaration")) != null) {
            this.insert_space_before_opening_paren_in_constructor_declaration = "insert".equals(insertSpaceBeforeOpeningParenInConstructorDeclarationOption);
        }
        if ((insertSpaceBeforeOpeningParenInEnumConstantOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_enum_constant")) != null) {
            this.insert_space_before_opening_paren_in_enum_constant = "insert".equals(insertSpaceBeforeOpeningParenInEnumConstantOption);
        }
        if ((insertSpaceBeforeOpeningParenInForOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_for")) != null) {
            this.insert_space_before_opening_paren_in_for = "insert".equals(insertSpaceBeforeOpeningParenInForOption);
        }
        if ((insertSpaceBeforeOpeningParenInIfOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_if")) != null) {
            this.insert_space_before_opening_paren_in_if = "insert".equals(insertSpaceBeforeOpeningParenInIfOption);
        }
        if ((insertSpaceBeforeOpeningParenInMethodInvocationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_method_invocation")) != null) {
            this.insert_space_before_opening_paren_in_method_invocation = "insert".equals(insertSpaceBeforeOpeningParenInMethodInvocationOption);
        }
        if ((insertSpaceBeforeOpeningParenInMethodDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_method_declaration")) != null) {
            this.insert_space_before_opening_paren_in_method_declaration = "insert".equals(insertSpaceBeforeOpeningParenInMethodDeclarationOption);
        }
        if ((insertSpaceBeforeOpeningParenInSwitchOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_switch")) != null) {
            this.insert_space_before_opening_paren_in_switch = "insert".equals(insertSpaceBeforeOpeningParenInSwitchOption);
        }
        if ((insertSpaceBeforeOpeningBraceInSwitchOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_switch")) != null) {
            this.insert_space_before_opening_brace_in_switch = "insert".equals(insertSpaceBeforeOpeningBraceInSwitchOption);
        }
        if ((insertSpaceBeforeOpeningParenInSynchronizedOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_synchronized")) != null) {
            this.insert_space_before_opening_paren_in_synchronized = "insert".equals(insertSpaceBeforeOpeningParenInSynchronizedOption);
        }
        if ((insertSpaceBeforeOpeningParenInTryOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_try")) != null) {
            this.insert_space_before_opening_paren_in_try = "insert".equals(insertSpaceBeforeOpeningParenInTryOption);
        }
        if ((insertSpaceBeforeOpeningParenInParenthesizedExpressionOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_parenthesized_expression")) != null) {
            this.insert_space_before_opening_paren_in_parenthesized_expression = "insert".equals(insertSpaceBeforeOpeningParenInParenthesizedExpressionOption);
        }
        if ((insertSpaceBeforeOpeningParenInWhileOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_opening_paren_in_while")) != null) {
            this.insert_space_before_opening_paren_in_while = "insert".equals(insertSpaceBeforeOpeningParenInWhileOption);
        }
        if ((insertSpaceBeforeParenthesizedExpressionInReturnOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_parenthesized_expression_in_return")) != null) {
            this.insert_space_before_parenthesized_expression_in_return = "insert".equals(insertSpaceBeforeParenthesizedExpressionInReturnOption);
        }
        if ((insertSpaceBeforeParenthesizedExpressionInThrowOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_parenthesized_expression_in_throw")) != null) {
            this.insert_space_before_parenthesized_expression_in_throw = "insert".equals(insertSpaceBeforeParenthesizedExpressionInThrowOption);
        }
        if ((insertSpaceBeforePostfixOperatorOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_postfix_operator")) != null) {
            this.insert_space_before_postfix_operator = "insert".equals(insertSpaceBeforePostfixOperatorOption);
        }
        if ((insertSpaceBeforePrefixOperatorOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_prefix_operator")) != null) {
            this.insert_space_before_prefix_operator = "insert".equals(insertSpaceBeforePrefixOperatorOption);
        }
        if ((insertSpaceBeforeQuestionInConditionalOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_question_in_conditional")) != null) {
            this.insert_space_before_question_in_conditional = "insert".equals(insertSpaceBeforeQuestionInConditionalOption);
        }
        if ((insertSpaceBeforeQuestionInWildcardOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_question_in_wildcard")) != null) {
            this.insert_space_before_question_in_wilcard = "insert".equals(insertSpaceBeforeQuestionInWildcardOption);
        }
        if ((insertSpaceBeforeSemicolonOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_semicolon")) != null) {
            this.insert_space_before_semicolon = "insert".equals(insertSpaceBeforeSemicolonOption);
        }
        if ((insertSpaceBeforeSemicolonInForOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_semicolon_in_for")) != null) {
            this.insert_space_before_semicolon_in_for = "insert".equals(insertSpaceBeforeSemicolonInForOption);
        }
        if ((insertSpaceBeforeSemicolonInTryOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_semicolon_in_try_resources")) != null) {
            this.insert_space_before_semicolon_in_try_resources = "insert".equals(insertSpaceBeforeSemicolonInTryOption);
        }
        if ((insertSpaceBeforeUnaryOperatorOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_before_unary_operator")) != null) {
            this.insert_space_before_unary_operator = "insert".equals(insertSpaceBeforeUnaryOperatorOption);
        }
        if ((insertSpaceBetweenBracketsInArrayTypeReferenceOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_between_brackets_in_array_type_reference")) != null) {
            this.insert_space_between_brackets_in_array_type_reference = "insert".equals(insertSpaceBetweenBracketsInArrayTypeReferenceOption);
        }
        if ((insertSpaceBetweenEmptyBracesInArrayInitializerOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_between_empty_braces_in_array_initializer")) != null) {
            this.insert_space_between_empty_braces_in_array_initializer = "insert".equals(insertSpaceBetweenEmptyBracesInArrayInitializerOption);
        }
        if ((insertSpaceBetweenEmptyBracketsInArrayAllocationExpressionOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_between_empty_brackets_in_array_allocation_expression")) != null) {
            this.insert_space_between_empty_brackets_in_array_allocation_expression = "insert".equals(insertSpaceBetweenEmptyBracketsInArrayAllocationExpressionOption);
        }
        if ((insertSpaceBetweenEmptyParensInConstructorDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_constructor_declaration")) != null) {
            this.insert_space_between_empty_parens_in_constructor_declaration = "insert".equals(insertSpaceBetweenEmptyParensInConstructorDeclarationOption);
        }
        if ((insertSpaceBetweenEmptyParensInAnnotationTypeMemberDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_annotation_type_member_declaration")) != null) {
            this.insert_space_between_empty_parens_in_annotation_type_member_declaration = "insert".equals(insertSpaceBetweenEmptyParensInAnnotationTypeMemberDeclarationOption);
        }
        if ((insertSpaceBetweenEmptyParensInEnumConstantOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_enum_constant")) != null) {
            this.insert_space_between_empty_parens_in_enum_constant = "insert".equals(insertSpaceBetweenEmptyParensInEnumConstantOption);
        }
        if ((insertSpaceBetweenEmptyParensInMethodDeclarationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_method_declaration")) != null) {
            this.insert_space_between_empty_parens_in_method_declaration = "insert".equals(insertSpaceBetweenEmptyParensInMethodDeclarationOption);
        }
        if ((insertSpaceBetweenEmptyParensInMethodInvocationOption = settings.get("org.eclipse.jdt.core.formatter.insert_space_between_empty_parens_in_method_invocation")) != null) {
            this.insert_space_between_empty_parens_in_method_invocation = "insert".equals(insertSpaceBetweenEmptyParensInMethodInvocationOption);
        }
        if ((compactElseIfOption = settings.get("org.eclipse.jdt.core.formatter.compact_else_if")) != null) {
            this.compact_else_if = "true".equals(compactElseIfOption);
        }
        if ((keepGuardianClauseOnOneLineOption = settings.get("org.eclipse.jdt.core.formatter.format_guardian_clause_on_one_line")) != null) {
            this.keep_guardian_clause_on_one_line = "true".equals(keepGuardianClauseOnOneLineOption);
        }
        if ((keepElseStatementOnSameLineOption = settings.get("org.eclipse.jdt.core.formatter.keep_else_statement_on_same_line")) != null) {
            this.keep_else_statement_on_same_line = "true".equals(keepElseStatementOnSameLineOption);
        }
        if ((keepEmptyArrayInitializerOnOneLineOption = settings.get("org.eclipse.jdt.core.formatter.keep_empty_array_initializer_on_one_line")) != null) {
            this.keep_empty_array_initializer_on_one_line = "true".equals(keepEmptyArrayInitializerOnOneLineOption);
        }
        Object v = settings.get("org.eclipse.jdt.core.formatter.keep_imple_if_on_one_line");
        if (keepSimpleIfOnOneLineOption != null) {
            this.keep_simple_if_on_one_line = "true".equals(keepSimpleIfOnOneLineOption);
        }
        Object v2 = settings.get("org.eclipse.jdt.core.formatter.keep_then_statement_on_same_line");
        if (keepThenStatementOnSameLineOption != null) {
            this.keep_then_statement_on_same_line = "true".equals(keepThenStatementOnSameLineOption);
        }
        Object v3 = settings.get("org.eclipse.jdt.core.formatter.never_indent_block_comments_on_first_column");
        if (neverIndentBlockCommentOnFirstColumnOption != null) {
            this.never_indent_block_comments_on_first_column = "true".equals(neverIndentBlockCommentOnFirstColumnOption);
        }
        Object v4 = settings.get("org.eclipse.jdt.core.formatter.never_indent_line_comments_on_first_column");
        if (neverIndentLineCommentOnFirstColumnOption != null) {
            this.never_indent_line_comments_on_first_column = "true".equals(neverIndentLineCommentOnFirstColumnOption);
        }
        Object v5 = settings.get("org.eclipse.jdt.core.formatter.number_of_empty_lines_to_preserve");
        if (numberOfEmptyLinesToPreserveOption != null) {
            try {
                this.number_of_empty_lines_to_preserve = Integer.parseInt((String)numberOfEmptyLinesToPreserveOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.number_of_empty_lines_to_preserve = 0;
            }
            catch (ClassCastException classCastException) {
                this.number_of_empty_lines_to_preserve = 0;
            }
        }
        Object v6 = settings.get("org.eclipse.jdt.core.formatter.join_lines_in_comments");
        if (joinLinesInCommentsOption != null) {
            this.join_lines_in_comments = "true".equals(joinLinesInCommentsOption);
        }
        Object v7 = settings.get("org.eclipse.jdt.core.formatter.join_wrapped_lines");
        if (joinWrappedLinesOption != null) {
            this.join_wrapped_lines = "true".equals(joinWrappedLinesOption);
        }
        Object v8 = settings.get("org.eclipse.jdt.core.formatter.put_empty_statement_on_new_line");
        if (putEmptyStatementOnNewLineOption != null) {
            this.put_empty_statement_on_new_line = "true".equals(putEmptyStatementOnNewLineOption);
        }
        Object v9 = settings.get("org.eclipse.jdt.core.formatter.tabulation.size");
        if (tabSizeOption != null) {
            try {
                this.tab_size = Integer.parseInt((String)tabSizeOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.tab_size = 4;
            }
            catch (ClassCastException classCastException) {
                this.tab_size = 4;
            }
        }
        Object v10 = settings.get("org.eclipse.jdt.core.formatter.use_tabs_only_for_leading_indentations");
        if (useTabsOnlyForLeadingIndentationsOption != null) {
            this.use_tabs_only_for_leading_indentations = "true".equals(useTabsOnlyForLeadingIndentationsOption);
        }
        Object v11 = settings.get("org.eclipse.jdt.core.formatter.lineSplit");
        if (pageWidthOption != null) {
            try {
                this.page_width = Integer.parseInt((String)pageWidthOption);
            }
            catch (NumberFormatException numberFormatException) {
                this.page_width = 80;
            }
            catch (ClassCastException classCastException) {
                this.page_width = 80;
            }
        }
        Object v12 = settings.get("org.eclipse.jdt.core.formatter.tabulation.char");
        if (useTabOption != null) {
            this.tab_char = "tab".equals(useTabOption) ? 1 : ("space".equals(useTabOption) ? 2 : 4);
        }
        Object v13 = settings.get("org.eclipse.jdt.core.formatter.wrap_before_binary_operator");
        if (wrapBeforeBinaryOperatorOption != null) {
            this.wrap_before_binary_operator = "true".equals(wrapBeforeBinaryOperatorOption);
        }
        Object v14 = settings.get("org.eclipse.jdt.core.formatter.wrap_before_or_operator_multicatch");
        if (wrapBeforeOrOperatorMulticatchOption != null) {
            this.wrap_before_or_operator_multicatch = "true".equals(wrapBeforeOrOperatorMulticatchOption);
        }
        Object v15 = settings.get("org.eclipse.jdt.core.formatter.use_on_off_tags");
        if (useTags != null) {
            this.use_tags = "true".equals(useTags);
        }
        Object v16 = settings.get("org.eclipse.jdt.core.formatter.disabling_tag");
        if (disableTagOption != null && disableTagOption instanceof String) {
            void idx2;
            String string = (String)disableTagOption;
            int n = ((String)stringValue).indexOf(10);
            if (idx2 == false) {
                this.disabling_tag = null;
            } else {
                void tag;
                String string2 = idx2 < 0 ? ((String)stringValue).trim() : ((String)stringValue).substring(0, (int)idx2).trim();
                this.disabling_tag = (char[])(tag.length() == 0 ? null : tag.toCharArray());
            }
        }
        stringValue = settings.get("org.eclipse.jdt.core.formatter.enabling_tag");
        if (enableTagOption != null && enableTagOption instanceof String) {
            void idx;
            void stringValue2;
            String idx2 = (String)enableTagOption;
            int tag = stringValue2.indexOf(10);
            if (idx == false) {
                this.enabling_tag = null;
            } else {
                void tag2;
                String string = idx < 0 ? stringValue2.trim() : stringValue2.substring(0, (int)idx).trim();
                this.enabling_tag = (char[])(tag2.length() == 0 ? null : tag2.toCharArray());
            }
        }
        Object stringValue2 = settings.get("org.eclipse.jdt.core.formatter.wrap_outer_expressions_when_nested");
        if (wrapWrapOuterExpressionsWhenNestedOption != null) {
            this.wrap_outer_expressions_when_nested = "true".equals(wrapWrapOuterExpressionsWhenNestedOption);
        }
    }

    private void setDeprecatedOptions(Map settings) {
        Object commentClearBlankLinesOption = settings.get("org.eclipse.jdt.core.formatter.comment.clear_blank_lines");
        if (commentClearBlankLinesOption != null) {
            this.comment_clear_blank_lines_in_javadoc_comment = "true".equals(commentClearBlankLinesOption);
            this.comment_clear_blank_lines_in_block_comment = "true".equals(commentClearBlankLinesOption);
        } else {
            Object commentClearBlankLinesInBlockCommentOption;
            Object commentClearBlankLinesInJavadocCommentOption = settings.get("org.eclipse.jdt.core.formatter.comment.clear_blank_lines_in_javadoc_comment");
            if (commentClearBlankLinesInJavadocCommentOption != null) {
                this.comment_clear_blank_lines_in_javadoc_comment = "true".equals(commentClearBlankLinesInJavadocCommentOption);
            }
            if ((commentClearBlankLinesInBlockCommentOption = settings.get("org.eclipse.jdt.core.formatter.comment.clear_blank_lines_in_block_comment")) != null) {
                this.comment_clear_blank_lines_in_block_comment = "true".equals(commentClearBlankLinesInBlockCommentOption);
            }
        }
        Object insertNewLineAfterAnnotationOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_after_annotation");
        Object insertNewLineAfterAnnotationOnMemberOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_member");
        Object insertNewLineAfterAnnotationOnTypeOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_type");
        Object insertNewLineAfterAnnotationOnFieldOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_field");
        Object insertNewLineAfterAnnotationOnMethodOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_method");
        Object insertNewLineAfterAnnotationOnPackageOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_package");
        Object insertNewLineAfterAnnotationOnParameterOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_parameter");
        Object insertNewLineAfterAnnotationOnLocalVariableOption = settings.get("org.eclipse.jdt.core.formatter.insert_new_line_after_annotation_on_local_variable");
        if (insertNewLineAfterAnnotationOnTypeOption == null && insertNewLineAfterAnnotationOnFieldOption == null && insertNewLineAfterAnnotationOnMethodOption == null && insertNewLineAfterAnnotationOnPackageOption == null) {
            if (insertNewLineAfterAnnotationOnMemberOption != null) {
                boolean insert;
                this.insert_new_line_after_annotation_on_type = insert = "insert".equals(insertNewLineAfterAnnotationOnMemberOption);
                this.insert_new_line_after_annotation_on_field = insert;
                this.insert_new_line_after_annotation_on_method = insert;
                this.insert_new_line_after_annotation_on_package = insert;
                if (insertNewLineAfterAnnotationOnParameterOption != null) {
                    this.insert_new_line_after_annotation_on_parameter = "insert".equals(insertNewLineAfterAnnotationOnParameterOption);
                }
                if (insertNewLineAfterAnnotationOnLocalVariableOption != null) {
                    this.insert_new_line_after_annotation_on_local_variable = "insert".equals(insertNewLineAfterAnnotationOnLocalVariableOption);
                }
            } else if (insertNewLineAfterAnnotationOnParameterOption == null && insertNewLineAfterAnnotationOnLocalVariableOption == null && insertNewLineAfterAnnotationOption != null) {
                boolean insert;
                this.insert_new_line_after_annotation_on_type = insert = "insert".equals(insertNewLineAfterAnnotationOption);
                this.insert_new_line_after_annotation_on_field = insert;
                this.insert_new_line_after_annotation_on_method = insert;
                this.insert_new_line_after_annotation_on_package = insert;
                this.insert_new_line_after_annotation_on_parameter = insert;
                this.insert_new_line_after_annotation_on_local_variable = insert;
            }
        } else {
            if (insertNewLineAfterAnnotationOnTypeOption != null) {
                this.insert_new_line_after_annotation_on_type = "insert".equals(insertNewLineAfterAnnotationOnTypeOption);
            }
            if (insertNewLineAfterAnnotationOnFieldOption != null) {
                this.insert_new_line_after_annotation_on_field = "insert".equals(insertNewLineAfterAnnotationOnFieldOption);
            }
            if (insertNewLineAfterAnnotationOnMethodOption != null) {
                this.insert_new_line_after_annotation_on_method = "insert".equals(insertNewLineAfterAnnotationOnMethodOption);
            }
            if (insertNewLineAfterAnnotationOnPackageOption != null) {
                this.insert_new_line_after_annotation_on_package = "insert".equals(insertNewLineAfterAnnotationOnPackageOption);
            }
            if (insertNewLineAfterAnnotationOnParameterOption != null) {
                this.insert_new_line_after_annotation_on_parameter = "insert".equals(insertNewLineAfterAnnotationOnParameterOption);
            }
            if (insertNewLineAfterAnnotationOnLocalVariableOption != null) {
                this.insert_new_line_after_annotation_on_local_variable = "insert".equals(insertNewLineAfterAnnotationOnLocalVariableOption);
            }
        }
    }

    public void setDefaultSettings() {
        this.alignment_for_arguments_in_allocation_expression = 16;
        this.alignment_for_arguments_in_annotation = 0;
        this.alignment_for_arguments_in_enum_constant = 16;
        this.alignment_for_arguments_in_explicit_constructor_call = 16;
        this.alignment_for_arguments_in_method_invocation = 16;
        this.alignment_for_arguments_in_qualified_allocation_expression = 16;
        this.alignment_for_assignment = 0;
        this.alignment_for_binary_expression = 16;
        this.alignment_for_compact_if = 52;
        this.alignment_for_conditional_expression = 48;
        this.alignment_for_enum_constants = 0;
        this.alignment_for_expressions_in_array_initializer = 16;
        this.alignment_for_method_declaration = 0;
        this.alignment_for_multiple_fields = 16;
        this.alignment_for_parameters_in_constructor_declaration = 16;
        this.alignment_for_parameters_in_method_declaration = 16;
        this.alignment_for_resources_in_try = 80;
        this.alignment_for_selector_in_method_invocation = 16;
        this.alignment_for_superclass_in_type_declaration = 64;
        this.alignment_for_superinterfaces_in_enum_declaration = 64;
        this.alignment_for_superinterfaces_in_type_declaration = 64;
        this.alignment_for_throws_clause_in_constructor_declaration = 16;
        this.alignment_for_throws_clause_in_method_declaration = 16;
        this.alignment_for_union_type_in_multicatch = 16;
        this.align_type_members_on_columns = false;
        this.brace_position_for_annotation_type_declaration = "end_of_line";
        this.brace_position_for_anonymous_type_declaration = "end_of_line";
        this.brace_position_for_array_initializer = "end_of_line";
        this.brace_position_for_block = "end_of_line";
        this.brace_position_for_block_in_case = "end_of_line";
        this.brace_position_for_constructor_declaration = "end_of_line";
        this.brace_position_for_enum_constant = "end_of_line";
        this.brace_position_for_enum_declaration = "end_of_line";
        this.brace_position_for_method_declaration = "end_of_line";
        this.brace_position_for_type_declaration = "end_of_line";
        this.brace_position_for_switch = "end_of_line";
        this.comment_clear_blank_lines_in_block_comment = false;
        this.comment_clear_blank_lines_in_javadoc_comment = false;
        this.comment_format_block_comment = true;
        this.comment_format_javadoc_comment = true;
        this.comment_format_line_comment = true;
        this.comment_format_line_comment_starting_on_first_column = true;
        this.comment_format_header = false;
        this.comment_format_html = true;
        this.comment_format_source = true;
        this.comment_indent_parameter_description = true;
        this.comment_indent_root_tags = true;
        this.comment_insert_empty_line_before_root_tags = true;
        this.comment_insert_new_line_for_parameter = true;
        this.comment_new_lines_at_block_boundaries = true;
        this.comment_new_lines_at_javadoc_boundaries = true;
        this.comment_line_length = 80;
        this.comment_preserve_white_space_between_code_and_line_comments = false;
        this.continuation_indentation = 2;
        this.continuation_indentation_for_array_initializer = 2;
        this.blank_lines_after_imports = 0;
        this.blank_lines_after_package = 0;
        this.blank_lines_before_field = 0;
        this.blank_lines_before_first_class_body_declaration = 0;
        this.blank_lines_before_imports = 0;
        this.blank_lines_before_member_type = 0;
        this.blank_lines_before_method = 0;
        this.blank_lines_before_new_chunk = 0;
        this.blank_lines_before_package = 0;
        this.blank_lines_between_import_groups = 1;
        this.blank_lines_between_type_declarations = 0;
        this.blank_lines_at_beginning_of_method_body = 0;
        this.indent_statements_compare_to_block = true;
        this.indent_statements_compare_to_body = true;
        this.indent_body_declarations_compare_to_annotation_declaration_header = true;
        this.indent_body_declarations_compare_to_enum_constant_header = true;
        this.indent_body_declarations_compare_to_enum_declaration_header = true;
        this.indent_body_declarations_compare_to_type_header = true;
        this.indent_breaks_compare_to_cases = true;
        this.indent_empty_lines = false;
        this.indent_switchstatements_compare_to_cases = true;
        this.indent_switchstatements_compare_to_switch = true;
        this.indentation_size = 4;
        this.insert_new_line_after_annotation_on_type = true;
        this.insert_new_line_after_annotation_on_field = true;
        this.insert_new_line_after_annotation_on_method = true;
        this.insert_new_line_after_annotation_on_package = true;
        this.insert_new_line_after_annotation_on_parameter = false;
        this.insert_new_line_after_annotation_on_local_variable = true;
        this.insert_new_line_after_opening_brace_in_array_initializer = false;
        this.insert_new_line_at_end_of_file_if_missing = false;
        this.insert_new_line_before_catch_in_try_statement = false;
        this.insert_new_line_before_closing_brace_in_array_initializer = false;
        this.insert_new_line_before_else_in_if_statement = false;
        this.insert_new_line_before_finally_in_try_statement = false;
        this.insert_new_line_before_while_in_do_statement = false;
        this.insert_new_line_in_empty_anonymous_type_declaration = true;
        this.insert_new_line_in_empty_block = true;
        this.insert_new_line_in_empty_annotation_declaration = true;
        this.insert_new_line_in_empty_enum_constant = true;
        this.insert_new_line_in_empty_enum_declaration = true;
        this.insert_new_line_in_empty_method_body = true;
        this.insert_new_line_in_empty_type_declaration = true;
        this.insert_space_after_and_in_type_parameter = true;
        this.insert_space_after_assignment_operator = true;
        this.insert_space_after_at_in_annotation = false;
        this.insert_space_after_at_in_annotation_type_declaration = false;
        this.insert_space_after_binary_operator = true;
        this.insert_space_after_closing_angle_bracket_in_type_arguments = true;
        this.insert_space_after_closing_angle_bracket_in_type_parameters = true;
        this.insert_space_after_closing_paren_in_cast = true;
        this.insert_space_after_closing_brace_in_block = true;
        this.insert_space_after_colon_in_assert = true;
        this.insert_space_after_colon_in_case = true;
        this.insert_space_after_colon_in_conditional = true;
        this.insert_space_after_colon_in_for = true;
        this.insert_space_after_colon_in_labeled_statement = true;
        this.insert_space_after_comma_in_allocation_expression = true;
        this.insert_space_after_comma_in_annotation = true;
        this.insert_space_after_comma_in_array_initializer = true;
        this.insert_space_after_comma_in_constructor_declaration_parameters = true;
        this.insert_space_after_comma_in_constructor_declaration_throws = true;
        this.insert_space_after_comma_in_enum_constant_arguments = true;
        this.insert_space_after_comma_in_enum_declarations = true;
        this.insert_space_after_comma_in_explicit_constructor_call_arguments = true;
        this.insert_space_after_comma_in_for_increments = true;
        this.insert_space_after_comma_in_for_inits = true;
        this.insert_space_after_comma_in_method_invocation_arguments = true;
        this.insert_space_after_comma_in_method_declaration_parameters = true;
        this.insert_space_after_comma_in_method_declaration_throws = true;
        this.insert_space_after_comma_in_multiple_field_declarations = true;
        this.insert_space_after_comma_in_multiple_local_declarations = true;
        this.insert_space_after_comma_in_parameterized_type_reference = true;
        this.insert_space_after_comma_in_superinterfaces = true;
        this.insert_space_after_comma_in_type_arguments = true;
        this.insert_space_after_comma_in_type_parameters = true;
        this.insert_space_after_ellipsis = true;
        this.insert_space_after_opening_angle_bracket_in_parameterized_type_reference = false;
        this.insert_space_after_opening_angle_bracket_in_type_arguments = false;
        this.insert_space_after_opening_angle_bracket_in_type_parameters = false;
        this.insert_space_after_opening_bracket_in_array_allocation_expression = false;
        this.insert_space_after_opening_bracket_in_array_reference = false;
        this.insert_space_after_opening_brace_in_array_initializer = false;
        this.insert_space_after_opening_paren_in_annotation = false;
        this.insert_space_after_opening_paren_in_cast = false;
        this.insert_space_after_opening_paren_in_catch = false;
        this.insert_space_after_opening_paren_in_constructor_declaration = false;
        this.insert_space_after_opening_paren_in_enum_constant = false;
        this.insert_space_after_opening_paren_in_for = false;
        this.insert_space_after_opening_paren_in_if = false;
        this.insert_space_after_opening_paren_in_method_declaration = false;
        this.insert_space_after_opening_paren_in_method_invocation = false;
        this.insert_space_after_opening_paren_in_parenthesized_expression = false;
        this.insert_space_after_opening_paren_in_switch = false;
        this.insert_space_after_opening_paren_in_synchronized = false;
        this.insert_space_after_opening_paren_in_try = false;
        this.insert_space_after_opening_paren_in_while = false;
        this.insert_space_after_postfix_operator = false;
        this.insert_space_after_prefix_operator = false;
        this.insert_space_after_question_in_conditional = true;
        this.insert_space_after_question_in_wilcard = false;
        this.insert_space_after_semicolon_in_for = true;
        this.insert_space_after_semicolon_in_try_resources = true;
        this.insert_space_after_unary_operator = false;
        this.insert_space_before_and_in_type_parameter = true;
        this.insert_space_before_at_in_annotation_type_declaration = true;
        this.insert_space_before_assignment_operator = true;
        this.insert_space_before_binary_operator = true;
        this.insert_space_before_closing_angle_bracket_in_parameterized_type_reference = false;
        this.insert_space_before_closing_angle_bracket_in_type_arguments = false;
        this.insert_space_before_closing_angle_bracket_in_type_parameters = false;
        this.insert_space_before_closing_brace_in_array_initializer = false;
        this.insert_space_before_closing_bracket_in_array_allocation_expression = false;
        this.insert_space_before_closing_bracket_in_array_reference = false;
        this.insert_space_before_closing_paren_in_annotation = false;
        this.insert_space_before_closing_paren_in_cast = false;
        this.insert_space_before_closing_paren_in_catch = false;
        this.insert_space_before_closing_paren_in_constructor_declaration = false;
        this.insert_space_before_closing_paren_in_enum_constant = false;
        this.insert_space_before_closing_paren_in_for = false;
        this.insert_space_before_closing_paren_in_if = false;
        this.insert_space_before_closing_paren_in_method_declaration = false;
        this.insert_space_before_closing_paren_in_method_invocation = false;
        this.insert_space_before_closing_paren_in_parenthesized_expression = false;
        this.insert_space_before_closing_paren_in_switch = false;
        this.insert_space_before_closing_paren_in_synchronized = false;
        this.insert_space_before_closing_paren_in_try = false;
        this.insert_space_before_closing_paren_in_while = false;
        this.insert_space_before_colon_in_assert = true;
        this.insert_space_before_colon_in_case = true;
        this.insert_space_before_colon_in_conditional = true;
        this.insert_space_before_colon_in_default = true;
        this.insert_space_before_colon_in_for = true;
        this.insert_space_before_colon_in_labeled_statement = true;
        this.insert_space_before_comma_in_allocation_expression = false;
        this.insert_space_before_comma_in_array_initializer = false;
        this.insert_space_before_comma_in_constructor_declaration_parameters = false;
        this.insert_space_before_comma_in_constructor_declaration_throws = false;
        this.insert_space_before_comma_in_enum_constant_arguments = false;
        this.insert_space_before_comma_in_enum_declarations = false;
        this.insert_space_before_comma_in_explicit_constructor_call_arguments = false;
        this.insert_space_before_comma_in_for_increments = false;
        this.insert_space_before_comma_in_for_inits = false;
        this.insert_space_before_comma_in_method_invocation_arguments = false;
        this.insert_space_before_comma_in_method_declaration_parameters = false;
        this.insert_space_before_comma_in_method_declaration_throws = false;
        this.insert_space_before_comma_in_multiple_field_declarations = false;
        this.insert_space_before_comma_in_multiple_local_declarations = false;
        this.insert_space_before_comma_in_parameterized_type_reference = false;
        this.insert_space_before_comma_in_superinterfaces = false;
        this.insert_space_before_comma_in_type_arguments = false;
        this.insert_space_before_comma_in_type_parameters = false;
        this.insert_space_before_ellipsis = false;
        this.insert_space_before_parenthesized_expression_in_return = true;
        this.insert_space_before_parenthesized_expression_in_throw = true;
        this.insert_space_before_opening_angle_bracket_in_parameterized_type_reference = false;
        this.insert_space_before_opening_angle_bracket_in_type_arguments = false;
        this.insert_space_before_opening_angle_bracket_in_type_parameters = false;
        this.insert_space_before_opening_brace_in_annotation_type_declaration = true;
        this.insert_space_before_opening_brace_in_anonymous_type_declaration = true;
        this.insert_space_before_opening_brace_in_array_initializer = false;
        this.insert_space_before_opening_brace_in_block = true;
        this.insert_space_before_opening_brace_in_constructor_declaration = true;
        this.insert_space_before_opening_brace_in_enum_constant = true;
        this.insert_space_before_opening_brace_in_enum_declaration = true;
        this.insert_space_before_opening_brace_in_method_declaration = true;
        this.insert_space_before_opening_brace_in_switch = true;
        this.insert_space_before_opening_brace_in_type_declaration = true;
        this.insert_space_before_opening_bracket_in_array_allocation_expression = false;
        this.insert_space_before_opening_bracket_in_array_reference = false;
        this.insert_space_before_opening_bracket_in_array_type_reference = false;
        this.insert_space_before_opening_paren_in_annotation = false;
        this.insert_space_before_opening_paren_in_annotation_type_member_declaration = false;
        this.insert_space_before_opening_paren_in_catch = true;
        this.insert_space_before_opening_paren_in_constructor_declaration = false;
        this.insert_space_before_opening_paren_in_enum_constant = false;
        this.insert_space_before_opening_paren_in_for = true;
        this.insert_space_before_opening_paren_in_if = true;
        this.insert_space_before_opening_paren_in_method_invocation = false;
        this.insert_space_before_opening_paren_in_method_declaration = false;
        this.insert_space_before_opening_paren_in_switch = true;
        this.insert_space_before_opening_paren_in_synchronized = true;
        this.insert_space_before_opening_paren_in_try = true;
        this.insert_space_before_opening_paren_in_parenthesized_expression = false;
        this.insert_space_before_opening_paren_in_while = true;
        this.insert_space_before_postfix_operator = false;
        this.insert_space_before_prefix_operator = false;
        this.insert_space_before_question_in_conditional = true;
        this.insert_space_before_question_in_wilcard = false;
        this.insert_space_before_semicolon = false;
        this.insert_space_before_semicolon_in_for = false;
        this.insert_space_before_semicolon_in_try_resources = false;
        this.insert_space_before_unary_operator = false;
        this.insert_space_between_brackets_in_array_type_reference = false;
        this.insert_space_between_empty_braces_in_array_initializer = false;
        this.insert_space_between_empty_brackets_in_array_allocation_expression = false;
        this.insert_space_between_empty_parens_in_annotation_type_member_declaration = false;
        this.insert_space_between_empty_parens_in_constructor_declaration = false;
        this.insert_space_between_empty_parens_in_enum_constant = false;
        this.insert_space_between_empty_parens_in_method_declaration = false;
        this.insert_space_between_empty_parens_in_method_invocation = false;
        this.compact_else_if = true;
        this.keep_guardian_clause_on_one_line = false;
        this.keep_else_statement_on_same_line = false;
        this.keep_empty_array_initializer_on_one_line = false;
        this.keep_simple_if_on_one_line = false;
        this.keep_then_statement_on_same_line = false;
        this.never_indent_block_comments_on_first_column = false;
        this.never_indent_line_comments_on_first_column = false;
        this.number_of_empty_lines_to_preserve = 1;
        this.join_lines_in_comments = true;
        this.join_wrapped_lines = true;
        this.put_empty_statement_on_new_line = false;
        this.tab_size = 4;
        this.page_width = 80;
        this.tab_char = 1;
        this.use_tabs_only_for_leading_indentations = false;
        this.wrap_before_binary_operator = true;
        this.wrap_before_or_operator_multicatch = true;
        this.use_tags = false;
        this.disabling_tag = DEFAULT_DISABLING_TAG;
        this.enabling_tag = DEFAULT_ENABLING_TAG;
        this.wrap_outer_expressions_when_nested = true;
    }

    public void setEclipseDefaultSettings() {
        this.setJavaConventionsSettings();
        this.tab_char = 1;
        this.tab_size = 4;
    }

    public void setJavaConventionsSettings() {
        this.alignment_for_arguments_in_allocation_expression = 16;
        this.alignment_for_arguments_in_annotation = 0;
        this.alignment_for_arguments_in_enum_constant = 16;
        this.alignment_for_arguments_in_explicit_constructor_call = 16;
        this.alignment_for_arguments_in_method_invocation = 16;
        this.alignment_for_arguments_in_qualified_allocation_expression = 16;
        this.alignment_for_assignment = 0;
        this.alignment_for_binary_expression = 16;
        this.alignment_for_compact_if = 16;
        this.alignment_for_conditional_expression = 80;
        this.alignment_for_enum_constants = 0;
        this.alignment_for_expressions_in_array_initializer = 16;
        this.alignment_for_method_declaration = 0;
        this.alignment_for_multiple_fields = 16;
        this.alignment_for_parameters_in_constructor_declaration = 16;
        this.alignment_for_parameters_in_method_declaration = 16;
        this.alignment_for_resources_in_try = 80;
        this.alignment_for_selector_in_method_invocation = 16;
        this.alignment_for_superclass_in_type_declaration = 16;
        this.alignment_for_superinterfaces_in_enum_declaration = 16;
        this.alignment_for_superinterfaces_in_type_declaration = 16;
        this.alignment_for_throws_clause_in_constructor_declaration = 16;
        this.alignment_for_throws_clause_in_method_declaration = 16;
        this.alignment_for_union_type_in_multicatch = 16;
        this.align_type_members_on_columns = false;
        this.brace_position_for_annotation_type_declaration = "end_of_line";
        this.brace_position_for_anonymous_type_declaration = "end_of_line";
        this.brace_position_for_array_initializer = "end_of_line";
        this.brace_position_for_block = "end_of_line";
        this.brace_position_for_block_in_case = "end_of_line";
        this.brace_position_for_constructor_declaration = "end_of_line";
        this.brace_position_for_enum_constant = "end_of_line";
        this.brace_position_for_enum_declaration = "end_of_line";
        this.brace_position_for_method_declaration = "end_of_line";
        this.brace_position_for_type_declaration = "end_of_line";
        this.brace_position_for_switch = "end_of_line";
        this.comment_clear_blank_lines_in_block_comment = false;
        this.comment_clear_blank_lines_in_javadoc_comment = false;
        this.comment_format_block_comment = true;
        this.comment_format_javadoc_comment = true;
        this.comment_format_line_comment = true;
        this.comment_format_line_comment_starting_on_first_column = true;
        this.comment_format_header = false;
        this.comment_format_html = true;
        this.comment_format_source = true;
        this.comment_indent_parameter_description = true;
        this.comment_indent_root_tags = true;
        this.comment_insert_empty_line_before_root_tags = true;
        this.comment_insert_new_line_for_parameter = true;
        this.comment_new_lines_at_block_boundaries = true;
        this.comment_new_lines_at_javadoc_boundaries = true;
        this.comment_line_length = 80;
        this.comment_preserve_white_space_between_code_and_line_comments = false;
        this.continuation_indentation = 2;
        this.continuation_indentation_for_array_initializer = 2;
        this.blank_lines_after_imports = 1;
        this.blank_lines_after_package = 1;
        this.blank_lines_before_field = 0;
        this.blank_lines_before_first_class_body_declaration = 0;
        this.blank_lines_before_imports = 1;
        this.blank_lines_before_member_type = 1;
        this.blank_lines_before_method = 1;
        this.blank_lines_before_new_chunk = 1;
        this.blank_lines_before_package = 0;
        this.blank_lines_between_import_groups = 1;
        this.blank_lines_between_type_declarations = 1;
        this.blank_lines_at_beginning_of_method_body = 0;
        this.indent_statements_compare_to_block = true;
        this.indent_statements_compare_to_body = true;
        this.indent_body_declarations_compare_to_annotation_declaration_header = true;
        this.indent_body_declarations_compare_to_enum_constant_header = true;
        this.indent_body_declarations_compare_to_enum_declaration_header = true;
        this.indent_body_declarations_compare_to_type_header = true;
        this.indent_breaks_compare_to_cases = true;
        this.indent_empty_lines = false;
        this.indent_switchstatements_compare_to_cases = true;
        this.indent_switchstatements_compare_to_switch = false;
        this.indentation_size = 4;
        this.insert_new_line_after_annotation_on_type = true;
        this.insert_new_line_after_annotation_on_field = true;
        this.insert_new_line_after_annotation_on_method = true;
        this.insert_new_line_after_annotation_on_package = true;
        this.insert_new_line_after_annotation_on_parameter = false;
        this.insert_new_line_after_annotation_on_local_variable = true;
        this.insert_new_line_after_opening_brace_in_array_initializer = false;
        this.insert_new_line_at_end_of_file_if_missing = false;
        this.insert_new_line_before_catch_in_try_statement = false;
        this.insert_new_line_before_closing_brace_in_array_initializer = false;
        this.insert_new_line_before_else_in_if_statement = false;
        this.insert_new_line_before_finally_in_try_statement = false;
        this.insert_new_line_before_while_in_do_statement = false;
        this.insert_new_line_in_empty_anonymous_type_declaration = true;
        this.insert_new_line_in_empty_block = true;
        this.insert_new_line_in_empty_annotation_declaration = true;
        this.insert_new_line_in_empty_enum_constant = true;
        this.insert_new_line_in_empty_enum_declaration = true;
        this.insert_new_line_in_empty_method_body = true;
        this.insert_new_line_in_empty_type_declaration = true;
        this.insert_space_after_and_in_type_parameter = true;
        this.insert_space_after_assignment_operator = true;
        this.insert_space_after_at_in_annotation = false;
        this.insert_space_after_at_in_annotation_type_declaration = false;
        this.insert_space_after_binary_operator = true;
        this.insert_space_after_closing_angle_bracket_in_type_arguments = true;
        this.insert_space_after_closing_angle_bracket_in_type_parameters = true;
        this.insert_space_after_closing_paren_in_cast = true;
        this.insert_space_after_closing_brace_in_block = true;
        this.insert_space_after_colon_in_assert = true;
        this.insert_space_after_colon_in_case = true;
        this.insert_space_after_colon_in_conditional = true;
        this.insert_space_after_colon_in_for = true;
        this.insert_space_after_colon_in_labeled_statement = true;
        this.insert_space_after_comma_in_allocation_expression = true;
        this.insert_space_after_comma_in_annotation = true;
        this.insert_space_after_comma_in_array_initializer = true;
        this.insert_space_after_comma_in_constructor_declaration_parameters = true;
        this.insert_space_after_comma_in_constructor_declaration_throws = true;
        this.insert_space_after_comma_in_enum_constant_arguments = true;
        this.insert_space_after_comma_in_enum_declarations = true;
        this.insert_space_after_comma_in_explicit_constructor_call_arguments = true;
        this.insert_space_after_comma_in_for_increments = true;
        this.insert_space_after_comma_in_for_inits = true;
        this.insert_space_after_comma_in_method_invocation_arguments = true;
        this.insert_space_after_comma_in_method_declaration_parameters = true;
        this.insert_space_after_comma_in_method_declaration_throws = true;
        this.insert_space_after_comma_in_multiple_field_declarations = true;
        this.insert_space_after_comma_in_multiple_local_declarations = true;
        this.insert_space_after_comma_in_parameterized_type_reference = true;
        this.insert_space_after_comma_in_superinterfaces = true;
        this.insert_space_after_comma_in_type_arguments = true;
        this.insert_space_after_comma_in_type_parameters = true;
        this.insert_space_after_ellipsis = true;
        this.insert_space_after_opening_angle_bracket_in_parameterized_type_reference = false;
        this.insert_space_after_opening_angle_bracket_in_type_arguments = false;
        this.insert_space_after_opening_angle_bracket_in_type_parameters = false;
        this.insert_space_after_opening_bracket_in_array_allocation_expression = false;
        this.insert_space_after_opening_bracket_in_array_reference = false;
        this.insert_space_after_opening_brace_in_array_initializer = true;
        this.insert_space_after_opening_paren_in_annotation = false;
        this.insert_space_after_opening_paren_in_cast = false;
        this.insert_space_after_opening_paren_in_catch = false;
        this.insert_space_after_opening_paren_in_constructor_declaration = false;
        this.insert_space_after_opening_paren_in_enum_constant = false;
        this.insert_space_after_opening_paren_in_for = false;
        this.insert_space_after_opening_paren_in_if = false;
        this.insert_space_after_opening_paren_in_method_declaration = false;
        this.insert_space_after_opening_paren_in_method_invocation = false;
        this.insert_space_after_opening_paren_in_parenthesized_expression = false;
        this.insert_space_after_opening_paren_in_switch = false;
        this.insert_space_after_opening_paren_in_synchronized = false;
        this.insert_space_after_opening_paren_in_try = false;
        this.insert_space_after_opening_paren_in_while = false;
        this.insert_space_after_postfix_operator = false;
        this.insert_space_after_prefix_operator = false;
        this.insert_space_after_question_in_conditional = true;
        this.insert_space_after_question_in_wilcard = false;
        this.insert_space_after_semicolon_in_for = true;
        this.insert_space_after_semicolon_in_try_resources = true;
        this.insert_space_after_unary_operator = false;
        this.insert_space_before_and_in_type_parameter = true;
        this.insert_space_before_at_in_annotation_type_declaration = true;
        this.insert_space_before_assignment_operator = true;
        this.insert_space_before_binary_operator = true;
        this.insert_space_before_closing_angle_bracket_in_parameterized_type_reference = false;
        this.insert_space_before_closing_angle_bracket_in_type_arguments = false;
        this.insert_space_before_closing_angle_bracket_in_type_parameters = false;
        this.insert_space_before_closing_brace_in_array_initializer = true;
        this.insert_space_before_closing_bracket_in_array_allocation_expression = false;
        this.insert_space_before_closing_bracket_in_array_reference = false;
        this.insert_space_before_closing_paren_in_annotation = false;
        this.insert_space_before_closing_paren_in_cast = false;
        this.insert_space_before_closing_paren_in_catch = false;
        this.insert_space_before_closing_paren_in_constructor_declaration = false;
        this.insert_space_before_closing_paren_in_enum_constant = false;
        this.insert_space_before_closing_paren_in_for = false;
        this.insert_space_before_closing_paren_in_if = false;
        this.insert_space_before_closing_paren_in_method_declaration = false;
        this.insert_space_before_closing_paren_in_method_invocation = false;
        this.insert_space_before_closing_paren_in_parenthesized_expression = false;
        this.insert_space_before_closing_paren_in_switch = false;
        this.insert_space_before_closing_paren_in_synchronized = false;
        this.insert_space_before_closing_paren_in_try = false;
        this.insert_space_before_closing_paren_in_while = false;
        this.insert_space_before_colon_in_assert = true;
        this.insert_space_before_colon_in_case = false;
        this.insert_space_before_colon_in_conditional = true;
        this.insert_space_before_colon_in_default = false;
        this.insert_space_before_colon_in_for = true;
        this.insert_space_before_colon_in_labeled_statement = false;
        this.insert_space_before_comma_in_allocation_expression = false;
        this.insert_space_before_comma_in_array_initializer = false;
        this.insert_space_before_comma_in_constructor_declaration_parameters = false;
        this.insert_space_before_comma_in_constructor_declaration_throws = false;
        this.insert_space_before_comma_in_enum_constant_arguments = false;
        this.insert_space_before_comma_in_enum_declarations = false;
        this.insert_space_before_comma_in_explicit_constructor_call_arguments = false;
        this.insert_space_before_comma_in_for_increments = false;
        this.insert_space_before_comma_in_for_inits = false;
        this.insert_space_before_comma_in_method_invocation_arguments = false;
        this.insert_space_before_comma_in_method_declaration_parameters = false;
        this.insert_space_before_comma_in_method_declaration_throws = false;
        this.insert_space_before_comma_in_multiple_field_declarations = false;
        this.insert_space_before_comma_in_multiple_local_declarations = false;
        this.insert_space_before_comma_in_parameterized_type_reference = false;
        this.insert_space_before_comma_in_superinterfaces = false;
        this.insert_space_before_comma_in_type_arguments = false;
        this.insert_space_before_comma_in_type_parameters = false;
        this.insert_space_before_ellipsis = false;
        this.insert_space_before_parenthesized_expression_in_return = true;
        this.insert_space_before_parenthesized_expression_in_throw = true;
        this.insert_space_before_opening_angle_bracket_in_parameterized_type_reference = false;
        this.insert_space_before_opening_angle_bracket_in_type_arguments = false;
        this.insert_space_before_opening_angle_bracket_in_type_parameters = false;
        this.insert_space_before_opening_brace_in_annotation_type_declaration = true;
        this.insert_space_before_opening_brace_in_anonymous_type_declaration = true;
        this.insert_space_before_opening_brace_in_array_initializer = true;
        this.insert_space_before_opening_brace_in_block = true;
        this.insert_space_before_opening_brace_in_constructor_declaration = true;
        this.insert_space_before_opening_brace_in_enum_constant = true;
        this.insert_space_before_opening_brace_in_enum_declaration = true;
        this.insert_space_before_opening_brace_in_method_declaration = true;
        this.insert_space_before_opening_brace_in_switch = true;
        this.insert_space_before_opening_brace_in_type_declaration = true;
        this.insert_space_before_opening_bracket_in_array_allocation_expression = false;
        this.insert_space_before_opening_bracket_in_array_reference = false;
        this.insert_space_before_opening_bracket_in_array_type_reference = false;
        this.insert_space_before_opening_paren_in_annotation = false;
        this.insert_space_before_opening_paren_in_annotation_type_member_declaration = false;
        this.insert_space_before_opening_paren_in_catch = true;
        this.insert_space_before_opening_paren_in_constructor_declaration = false;
        this.insert_space_before_opening_paren_in_enum_constant = false;
        this.insert_space_before_opening_paren_in_for = true;
        this.insert_space_before_opening_paren_in_if = true;
        this.insert_space_before_opening_paren_in_method_invocation = false;
        this.insert_space_before_opening_paren_in_method_declaration = false;
        this.insert_space_before_opening_paren_in_switch = true;
        this.insert_space_before_opening_paren_in_synchronized = true;
        this.insert_space_before_opening_paren_in_try = true;
        this.insert_space_before_opening_paren_in_parenthesized_expression = false;
        this.insert_space_before_opening_paren_in_while = true;
        this.insert_space_before_postfix_operator = false;
        this.insert_space_before_prefix_operator = false;
        this.insert_space_before_question_in_conditional = true;
        this.insert_space_before_question_in_wilcard = false;
        this.insert_space_before_semicolon = false;
        this.insert_space_before_semicolon_in_for = false;
        this.insert_space_before_semicolon_in_try_resources = false;
        this.insert_space_before_unary_operator = false;
        this.insert_space_between_brackets_in_array_type_reference = false;
        this.insert_space_between_empty_braces_in_array_initializer = false;
        this.insert_space_between_empty_brackets_in_array_allocation_expression = false;
        this.insert_space_between_empty_parens_in_annotation_type_member_declaration = false;
        this.insert_space_between_empty_parens_in_constructor_declaration = false;
        this.insert_space_between_empty_parens_in_enum_constant = false;
        this.insert_space_between_empty_parens_in_method_declaration = false;
        this.insert_space_between_empty_parens_in_method_invocation = false;
        this.compact_else_if = true;
        this.keep_guardian_clause_on_one_line = false;
        this.keep_else_statement_on_same_line = false;
        this.keep_empty_array_initializer_on_one_line = false;
        this.keep_simple_if_on_one_line = false;
        this.keep_then_statement_on_same_line = false;
        this.never_indent_block_comments_on_first_column = false;
        this.never_indent_line_comments_on_first_column = false;
        this.number_of_empty_lines_to_preserve = 1;
        this.join_lines_in_comments = true;
        this.join_wrapped_lines = true;
        this.put_empty_statement_on_new_line = true;
        this.tab_size = 8;
        this.page_width = 80;
        this.tab_char = 4;
        this.use_tabs_only_for_leading_indentations = false;
        this.wrap_before_binary_operator = true;
        this.wrap_before_or_operator_multicatch = true;
        this.use_tags = false;
        this.disabling_tag = DEFAULT_DISABLING_TAG;
        this.enabling_tag = DEFAULT_ENABLING_TAG;
        this.wrap_outer_expressions_when_nested = true;
    }
}

