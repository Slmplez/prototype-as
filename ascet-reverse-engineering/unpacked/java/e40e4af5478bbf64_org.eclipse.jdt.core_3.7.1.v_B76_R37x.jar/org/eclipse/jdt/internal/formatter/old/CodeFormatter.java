/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.text.edits.ReplaceEdit
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jdt.internal.formatter.old;

import java.util.Map;
import org.eclipse.jdt.core.ICodeFormatter;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;
import org.eclipse.jdt.internal.compiler.parser.TerminalTokens;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.jdt.internal.formatter.DefaultCodeFormatter;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;

public class CodeFormatter
implements TerminalTokens,
ICodeFormatter {
    private Map options;

    public CodeFormatter(Map options) {
        this.options = options == null ? JavaCore.getOptions() : options;
    }

    public String format(String string, int indentLevel, int[] positions, String lineSeparator) {
        Object formatterCompactAssignment;
        Object formatterNewLineEmptyBlock;
        Object formatterNewLineElseIf;
        Object formatterClearBlankLines;
        Object formatterNewLineControl;
        Map newOptions = DefaultCodeFormatterConstants.getEclipse21Settings();
        Object formatterNewLineOpeningBrace = this.options.get("org.eclipse.jdt.core.formatter.newline.openingBrace");
        if (formatterNewLineOpeningBrace != null) {
            if ("insert".equals(formatterNewLineOpeningBrace)) {
                newOptions.put("org.eclipse.jdt.core.formatter.brace_position_for_anonymous_type_declaration", "next_line");
                newOptions.put("org.eclipse.jdt.core.formatter.brace_position_for_block", "next_line");
                newOptions.put("org.eclipse.jdt.core.formatter.brace_position_for_constructor_declaration", "next_line");
                newOptions.put("org.eclipse.jdt.core.formatter.brace_position_for_method_declaration", "next_line");
                newOptions.put("org.eclipse.jdt.core.formatter.brace_position_for_switch", "next_line");
                newOptions.put("org.eclipse.jdt.core.formatter.brace_position_for_type_declaration", "next_line");
            } else {
                newOptions.put("org.eclipse.jdt.core.formatter.brace_position_for_anonymous_type_declaration", "end_of_line");
                newOptions.put("org.eclipse.jdt.core.formatter.brace_position_for_block", "end_of_line");
                newOptions.put("org.eclipse.jdt.core.formatter.brace_position_for_constructor_declaration", "end_of_line");
                newOptions.put("org.eclipse.jdt.core.formatter.brace_position_for_method_declaration", "end_of_line");
                newOptions.put("org.eclipse.jdt.core.formatter.brace_position_for_switch", "end_of_line");
                newOptions.put("org.eclipse.jdt.core.formatter.brace_position_for_type_declaration", "end_of_line");
            }
        }
        if ((formatterNewLineControl = this.options.get("org.eclipse.jdt.core.formatter.newline.controlStatement")) != null) {
            if ("insert".equals(formatterNewLineControl)) {
                newOptions.put("org.eclipse.jdt.core.formatter.insert_new_line_before_catch_in_try_statement", "insert");
                newOptions.put("org.eclipse.jdt.core.formatter.insert_new_line_before_else_in_if_statement", "insert");
                newOptions.put("org.eclipse.jdt.core.formatter.insert_new_line_before_finally_in_try_statement", "insert");
                newOptions.put("org.eclipse.jdt.core.formatter.insert_new_line_before_while_in_do_statement", "insert");
            } else {
                newOptions.put("org.eclipse.jdt.core.formatter.insert_new_line_before_catch_in_try_statement", "do not insert");
                newOptions.put("org.eclipse.jdt.core.formatter.insert_new_line_before_else_in_if_statement", "do not insert");
                newOptions.put("org.eclipse.jdt.core.formatter.insert_new_line_before_finally_in_try_statement", "do not insert");
                newOptions.put("org.eclipse.jdt.core.formatter.insert_new_line_before_while_in_do_statement", "do not insert");
            }
        }
        if ((formatterClearBlankLines = this.options.get("org.eclipse.jdt.core.formatter.newline.clearAll")) != null) {
            if ("preserve one".equals(formatterClearBlankLines)) {
                newOptions.put("org.eclipse.jdt.core.formatter.number_of_empty_lines_to_preserve", "1");
            } else {
                newOptions.put("org.eclipse.jdt.core.formatter.number_of_empty_lines_to_preserve", "0");
            }
        }
        if ((formatterNewLineElseIf = this.options.get("org.eclipse.jdt.core.formatter.newline.elseIf")) != null) {
            if ("insert".equals(formatterNewLineElseIf)) {
                newOptions.put("org.eclipse.jdt.core.formatter.compact_else_if", "false");
            } else {
                newOptions.put("org.eclipse.jdt.core.formatter.compact_else_if", "true");
            }
        }
        if ((formatterNewLineEmptyBlock = this.options.get("org.eclipse.jdt.core.formatter.newline.emptyBlock")) != null) {
            if ("insert".equals(formatterNewLineEmptyBlock)) {
                newOptions.put("org.eclipse.jdt.core.formatter.insert_new_line_in_empty_block", "insert");
            } else {
                newOptions.put("org.eclipse.jdt.core.formatter.insert_new_line_in_empty_block", "do not insert");
            }
        }
        if ((formatterCompactAssignment = this.options.get("org.eclipse.jdt.core.formatter.style.assignment")) != null) {
            if ("compact".equals(formatterCompactAssignment)) {
                newOptions.put("org.eclipse.jdt.core.formatter.insert_space_before_assignment_operator", "do not insert");
            } else {
                newOptions.put("org.eclipse.jdt.core.formatter.insert_space_before_assignment_operator", "insert");
            }
        }
        if (this.options.get("org.eclipse.jdt.core.formatter.space.castexpression") != null) {
            if ("insert".equals(this.options.get("org.eclipse.jdt.core.formatter.space.castexpression"))) {
                newOptions.put("org.eclipse.jdt.core.formatter.insert_space_after_closing_paren_in_cast", "insert");
            } else {
                newOptions.put("org.eclipse.jdt.core.formatter.insert_space_after_closing_paren_in_cast", "do not insert");
            }
        }
        newOptions.put("org.eclipse.jdt.core.formatter.tabulation.char", this.options.get("org.eclipse.jdt.core.formatter.tabulation.char"));
        newOptions.put("org.eclipse.jdt.core.formatter.tabulation.size", this.options.get("org.eclipse.jdt.core.formatter.tabulation.size"));
        newOptions.put("org.eclipse.jdt.core.formatter.lineSplit", this.options.get("org.eclipse.jdt.core.formatter.lineSplit"));
        newOptions.put("org.eclipse.jdt.core.formatter.brace_position_for_array_initializer", "end_of_line");
        newOptions.put("org.eclipse.jdt.core.formatter.continuation_indentation", "1");
        newOptions.put("org.eclipse.jdt.core.formatter.alignment_for_parameters_in_method_declaration", DefaultCodeFormatterConstants.createAlignmentValue(false, 3, 2));
        newOptions.put("org.eclipse.jdt.core.formatter.alignment_for_parameters_in_constructor_declaration", DefaultCodeFormatterConstants.createAlignmentValue(false, 3, 2));
        newOptions.put("org.eclipse.jdt.core.formatter.alignment_for_arguments_in_allocation_expression", DefaultCodeFormatterConstants.createAlignmentValue(false, 3, 2));
        newOptions.put("org.eclipse.jdt.core.formatter.alignment_for_arguments_in_explicit_constructor_call", DefaultCodeFormatterConstants.createAlignmentValue(false, 3, 2));
        newOptions.put("org.eclipse.jdt.core.formatter.alignment_for_arguments_in_method_invocation", DefaultCodeFormatterConstants.createAlignmentValue(false, 3, 2));
        newOptions.put("org.eclipse.jdt.core.formatter.alignment_for_arguments_in_qualified_allocation_expression", DefaultCodeFormatterConstants.createAlignmentValue(false, 3, 2));
        newOptions.put("org.eclipse.jdt.core.formatter.alignment_for_throws_clause_in_method_declaration", DefaultCodeFormatterConstants.createAlignmentValue(false, 3, 2));
        newOptions.put("org.eclipse.jdt.core.formatter.alignment_for_multiple_fields", DefaultCodeFormatterConstants.createAlignmentValue(false, 3, 2));
        newOptions.put("org.eclipse.jdt.core.formatter.alignment_for_binary_expression", DefaultCodeFormatterConstants.createAlignmentValue(false, 3, 2));
        newOptions.put("org.eclipse.jdt.core.formatter.insert_space_before_opening_brace_in_array_initializer", "insert");
        newOptions.put("org.eclipse.jdt.core.formatter.insert_space_after_opening_brace_in_array_initializer", "insert");
        newOptions.put("org.eclipse.jdt.core.formatter.insert_space_before_closing_brace_in_array_initializer", "insert");
        DefaultCodeFormatter defaultCodeFormatter = new DefaultCodeFormatter(newOptions);
        TextEdit textEdit = defaultCodeFormatter.format(0, string, 0, string.length(), indentLevel, lineSeparator);
        if (positions != null && textEdit != null) {
            TextEdit[] edits = textEdit.getChildren();
            int textEditSize = edits.length;
            int editsIndex = 0;
            int delta = 0;
            int originalSourceLength = string.length() - 1;
            if (textEditSize != 0) {
                int i = 0;
                int max = positions.length;
                while (i < max) {
                    int currentPosition = positions[i];
                    if (currentPosition > originalSourceLength) {
                        currentPosition = originalSourceLength;
                    }
                    ReplaceEdit currentEdit = (ReplaceEdit)edits[editsIndex];
                    while (currentEdit.getOffset() <= currentPosition) {
                        delta += currentEdit.getText().length() - currentEdit.getLength();
                        if (++editsIndex >= textEditSize) break;
                        currentEdit = (ReplaceEdit)edits[editsIndex];
                    }
                    positions[i] = currentPosition + delta;
                    ++i;
                }
            }
        }
        return Util.editedString(string, textEdit);
    }
}

