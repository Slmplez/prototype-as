/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.text.edits.TextEdit
 */
package org.eclipse.jdt.internal.formatter;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.core.formatter.CodeFormatter;
import org.eclipse.jdt.core.formatter.DefaultCodeFormatterConstants;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.util.CodeSnippetParsingUtil;
import org.eclipse.jdt.internal.formatter.CodeFormatterVisitor;
import org.eclipse.jdt.internal.formatter.DefaultCodeFormatterOptions;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.text.edits.TextEdit;

public class DefaultCodeFormatter
extends CodeFormatter {
    public static boolean DEBUG = false;
    private static final int K_MASK = 127;
    private static Scanner PROBING_SCANNER;
    private CodeSnippetParsingUtil codeSnippetParsingUtil;
    private Map defaultCompilerOptions;
    private CodeFormatterVisitor newCodeFormatter;
    private Map options;
    private DefaultCodeFormatterOptions preferences;

    public DefaultCodeFormatter() {
        this(new DefaultCodeFormatterOptions(DefaultCodeFormatterConstants.getJavaConventionsSettings()), null);
    }

    public DefaultCodeFormatter(DefaultCodeFormatterOptions preferences) {
        this(preferences, null);
    }

    public DefaultCodeFormatter(DefaultCodeFormatterOptions defaultCodeFormatterOptions, Map options) {
        if (options != null) {
            this.options = options;
            this.preferences = new DefaultCodeFormatterOptions(options);
        } else {
            this.options = JavaCore.getOptions();
            this.preferences = new DefaultCodeFormatterOptions(DefaultCodeFormatterConstants.getJavaConventionsSettings());
        }
        this.defaultCompilerOptions = this.getDefaultCompilerOptions();
        if (defaultCodeFormatterOptions != null) {
            this.preferences.set(defaultCodeFormatterOptions.getMap());
        }
    }

    public DefaultCodeFormatter(Map options) {
        this(null, options);
    }

    public String createIndentationString(int indentationLevel) {
        if (indentationLevel < 0) {
            throw new IllegalArgumentException();
        }
        int tabs = 0;
        int spaces = 0;
        switch (this.preferences.tab_char) {
            case 2: {
                spaces = indentationLevel * this.preferences.tab_size;
                break;
            }
            case 1: {
                tabs = indentationLevel;
                break;
            }
            case 4: {
                int tabSize = this.preferences.tab_size;
                if (tabSize == 0) break;
                int spaceEquivalents = indentationLevel * this.preferences.indentation_size;
                tabs = spaceEquivalents / tabSize;
                spaces = spaceEquivalents % tabSize;
                break;
            }
            default: {
                return Util.EMPTY_STRING;
            }
        }
        if (tabs == 0 && spaces == 0) {
            return Util.EMPTY_STRING;
        }
        StringBuffer buffer = new StringBuffer(tabs + spaces);
        int i = 0;
        while (i < tabs) {
            buffer.append('\t');
            ++i;
        }
        i = 0;
        while (i < spaces) {
            buffer.append(' ');
            ++i;
        }
        return buffer.toString();
    }

    public TextEdit format(int kind, String source, int offset, int length, int indentationLevel, String lineSeparator) {
        if (offset < 0 || length < 0 || length > source.length()) {
            throw new IllegalArgumentException();
        }
        switch (kind & 0x7F) {
            case 64: {
                return this.formatComment(kind & 0x7F, source, indentationLevel, lineSeparator, new IRegion[]{new Region(offset, length)});
            }
            case 16: 
            case 32: {
                return this.formatComment(kind & 0x7F, source, indentationLevel, lineSeparator, new IRegion[]{new Region(offset, length)});
            }
        }
        return this.format(kind, source, new IRegion[]{new Region(offset, length)}, indentationLevel, lineSeparator);
    }

    public TextEdit format(int kind, String source, IRegion[] regions, int indentationLevel, String lineSeparator) {
        if (!this.regionsSatisfiesPreconditions(regions, source.length())) {
            throw new IllegalArgumentException();
        }
        this.codeSnippetParsingUtil = new CodeSnippetParsingUtil();
        boolean includeComments = (kind & 0x1000) != 0;
        switch (kind & 0x7F) {
            case 4: {
                return this.formatClassBodyDeclarations(source, indentationLevel, lineSeparator, regions, includeComments);
            }
            case 8: {
                return this.formatCompilationUnit(source, indentationLevel, lineSeparator, regions, includeComments);
            }
            case 1: {
                return this.formatExpression(source, indentationLevel, lineSeparator, regions, includeComments);
            }
            case 2: {
                return this.formatStatements(source, indentationLevel, lineSeparator, regions, includeComments);
            }
            case 0: {
                return this.probeFormatting(source, indentationLevel, lineSeparator, regions, includeComments);
            }
            case 16: 
            case 32: 
            case 64: {
                throw new IllegalArgumentException();
            }
        }
        return null;
    }

    private TextEdit formatClassBodyDeclarations(String source, int indentationLevel, String lineSeparator, IRegion[] regions, boolean includeComments) {
        ASTNode[] bodyDeclarations = this.codeSnippetParsingUtil.parseClassBodyDeclarations(source.toCharArray(), this.getDefaultCompilerOptions(), true);
        if (bodyDeclarations == null) {
            return null;
        }
        return this.internalFormatClassBodyDeclarations(source, indentationLevel, lineSeparator, bodyDeclarations, regions, includeComments);
    }

    private TextEdit formatComment(int kind, String source, int indentationLevel, String lineSeparator, IRegion[] regions) {
        Object oldOption = this.oldCommentFormatOption();
        boolean isFormattingComments = false;
        if (oldOption == null) {
            switch (kind & 0x7F) {
                case 16: {
                    isFormattingComments = "true".equals(this.options.get("org.eclipse.jdt.core.formatter.comment.format_line_comments"));
                    break;
                }
                case 32: {
                    isFormattingComments = "true".equals(this.options.get("org.eclipse.jdt.core.formatter.comment.format_block_comments"));
                    break;
                }
                case 64: {
                    isFormattingComments = "true".equals(this.options.get("org.eclipse.jdt.core.formatter.comment.format_javadoc_comments"));
                }
            }
        } else {
            isFormattingComments = "true".equals(oldOption);
        }
        if (isFormattingComments) {
            this.preferences.line_separator = lineSeparator != null ? lineSeparator : Util.LINE_SEPARATOR;
            this.preferences.initial_indentation_level = indentationLevel;
            if (this.codeSnippetParsingUtil == null) {
                this.codeSnippetParsingUtil = new CodeSnippetParsingUtil();
            }
            this.codeSnippetParsingUtil.parseCompilationUnit(source.toCharArray(), this.getDefaultCompilerOptions(), true);
            this.newCodeFormatter = new CodeFormatterVisitor(this.preferences, this.options, regions, this.codeSnippetParsingUtil, true);
            IRegion coveredRegion = this.getCoveredRegion(regions);
            int start = coveredRegion.getOffset();
            int end = start + coveredRegion.getLength();
            this.newCodeFormatter.formatComment(kind, source, start, end, indentationLevel);
            return this.newCodeFormatter.scribe.getRootEdit();
        }
        return null;
    }

    private TextEdit formatCompilationUnit(String source, int indentationLevel, String lineSeparator, IRegion[] regions, boolean includeComments) {
        CompilationUnitDeclaration compilationUnitDeclaration = this.codeSnippetParsingUtil.parseCompilationUnit(source.toCharArray(), this.getDefaultCompilerOptions(), true);
        this.preferences.line_separator = lineSeparator != null ? lineSeparator : Util.LINE_SEPARATOR;
        this.preferences.initial_indentation_level = indentationLevel;
        this.newCodeFormatter = new CodeFormatterVisitor(this.preferences, this.options, regions, this.codeSnippetParsingUtil, includeComments);
        return this.newCodeFormatter.format(source, compilationUnitDeclaration);
    }

    private TextEdit formatExpression(String source, int indentationLevel, String lineSeparator, IRegion[] regions, boolean includeComments) {
        Expression expression = this.codeSnippetParsingUtil.parseExpression(source.toCharArray(), this.getDefaultCompilerOptions(), true);
        if (expression == null) {
            return null;
        }
        return this.internalFormatExpression(source, indentationLevel, lineSeparator, expression, regions, includeComments);
    }

    private TextEdit formatStatements(String source, int indentationLevel, String lineSeparator, IRegion[] regions, boolean includeComments) {
        ConstructorDeclaration constructorDeclaration = this.codeSnippetParsingUtil.parseStatements(source.toCharArray(), this.getDefaultCompilerOptions(), true, false);
        if (constructorDeclaration.statements == null) {
            return null;
        }
        return this.internalFormatStatements(source, indentationLevel, lineSeparator, constructorDeclaration, regions, includeComments);
    }

    private IRegion getCoveredRegion(IRegion[] regions) {
        int length = regions.length;
        if (length == 1) {
            return regions[0];
        }
        int offset = regions[0].getOffset();
        IRegion lastRegion = regions[length - 1];
        return new Region(offset, lastRegion.getOffset() + lastRegion.getLength() - offset);
    }

    public String getDebugOutput() {
        return this.newCodeFormatter.scribe.toString();
    }

    private Map getDefaultCompilerOptions() {
        Object sourceOption;
        if (this.defaultCompilerOptions == null) {
            HashMap<String, String> optionsMap = new HashMap<String, String>(30);
            optionsMap.put("org.eclipse.jdt.core.compiler.debug.localVariable", "do not generate");
            optionsMap.put("org.eclipse.jdt.core.compiler.debug.lineNumber", "do not generate");
            optionsMap.put("org.eclipse.jdt.core.compiler.debug.sourceFile", "do not generate");
            optionsMap.put("org.eclipse.jdt.core.compiler.codegen.unusedLocal", "preserve");
            optionsMap.put("org.eclipse.jdt.core.compiler.doc.comment.support", "disabled");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.methodWithConstructorName", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.overridingPackageDefaultMethod", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.overridingMethodWithoutSuperInvocation", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.deprecation", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.deprecationInDeprecatedCode", "disabled");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.deprecationWhenOverridingDeprecatedMethod", "disabled");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.hiddenCatchBlock", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.unusedLocal", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.unusedObjectAllocation", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.unusedParameter", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.unusedImport", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.syntheticAccessEmulation", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.noEffectAssignment", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.nonExternalizedStringLiteral", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.noImplicitStringConversion", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.staticAccessReceiver", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.indirectStaticAccess", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.incompatibleNonInheritedInterfaceMethod", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.unusedPrivateMember", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.localVariableHiding", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.fieldHiding", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.possibleAccidentalBooleanAssignment", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.emptyStatement", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.assertIdentifier", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.enumIdentifier", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.undocumentedEmptyBlock", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.unnecessaryTypeCheck", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.invalidJavadoc", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsVisibility", "public");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTags", "disabled");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.missingJavadocTagDescription", "return_tag");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsDeprecatedRef", "disabled");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsNotVisibleRef", "disabled");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.missingJavadocTags", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.missingJavadocTagsVisibility", "public");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.missingJavadocTagsOverriding", "disabled");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.missingJavadocComments", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsVisibility", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsOverriding", "disabled");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.finallyBlockNotCompletingNormally", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownException", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionWhenOverriding", "disabled");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.unqualifiedFieldAccess", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.compliance", "1.4");
            optionsMap.put("org.eclipse.jdt.core.compiler.codegen.targetPlatform", "1.2");
            optionsMap.put("org.eclipse.jdt.core.compiler.taskTags", Util.EMPTY_STRING);
            optionsMap.put("org.eclipse.jdt.core.compiler.taskPriorities", Util.EMPTY_STRING);
            optionsMap.put("org.eclipse.jdt.core.compiler.taskCaseSensitive", "disabled");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.unusedParameterWhenImplementingAbstract", "disabled");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.unusedParameterWhenOverridingConcrete", "disabled");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.specialParameterHidingField", "disabled");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.unavoidableGenericTypeProblems", "enabled");
            optionsMap.put("org.eclipse.jdt.core.compiler.maxProblemPerUnit", String.valueOf(100));
            optionsMap.put("org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode", "disabled");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.reportMethodCanBeStatic", "ignore");
            optionsMap.put("org.eclipse.jdt.core.compiler.problem.reportMethodCanBePotentiallyStatic", "ignore");
            this.defaultCompilerOptions = optionsMap;
        }
        if ((sourceOption = this.options.get("org.eclipse.jdt.core.compiler.source")) != null) {
            this.defaultCompilerOptions.put("org.eclipse.jdt.core.compiler.source", sourceOption);
        } else {
            this.defaultCompilerOptions.put("org.eclipse.jdt.core.compiler.source", "1.3");
        }
        return this.defaultCompilerOptions;
    }

    private TextEdit internalFormatClassBodyDeclarations(String source, int indentationLevel, String lineSeparator, ASTNode[] bodyDeclarations, IRegion[] regions, boolean includeComments) {
        this.preferences.line_separator = lineSeparator != null ? lineSeparator : Util.LINE_SEPARATOR;
        this.preferences.initial_indentation_level = indentationLevel;
        this.newCodeFormatter = new CodeFormatterVisitor(this.preferences, this.options, regions, this.codeSnippetParsingUtil, includeComments);
        return this.newCodeFormatter.format(source, bodyDeclarations);
    }

    private TextEdit internalFormatExpression(String source, int indentationLevel, String lineSeparator, Expression expression, IRegion[] regions, boolean includeComments) {
        this.preferences.line_separator = lineSeparator != null ? lineSeparator : Util.LINE_SEPARATOR;
        this.preferences.initial_indentation_level = indentationLevel;
        this.newCodeFormatter = new CodeFormatterVisitor(this.preferences, this.options, regions, this.codeSnippetParsingUtil, includeComments);
        TextEdit textEdit = this.newCodeFormatter.format(source, expression);
        return textEdit;
    }

    private TextEdit internalFormatStatements(String source, int indentationLevel, String lineSeparator, ConstructorDeclaration constructorDeclaration, IRegion[] regions, boolean includeComments) {
        this.preferences.line_separator = lineSeparator != null ? lineSeparator : Util.LINE_SEPARATOR;
        this.preferences.initial_indentation_level = indentationLevel;
        this.newCodeFormatter = new CodeFormatterVisitor(this.preferences, this.options, regions, this.codeSnippetParsingUtil, includeComments);
        return this.newCodeFormatter.format(source, constructorDeclaration);
    }

    private Object oldCommentFormatOption() {
        return this.options.get("org.eclipse.jdt.core.formatter.comment.format_comments");
    }

    private TextEdit probeFormatting(String source, int indentationLevel, String lineSeparator, IRegion[] regions, boolean includeComments) {
        if (PROBING_SCANNER == null) {
            PROBING_SCANNER = new Scanner(true, false, false, 0x320000L, 0x320000L, null, null, true);
        }
        PROBING_SCANNER.setSource(source.toCharArray());
        IRegion coveredRegion = this.getCoveredRegion(regions);
        int offset = coveredRegion.getOffset();
        int length = coveredRegion.getLength();
        PROBING_SCANNER.resetTo(offset, offset + length - 1);
        try {
            int kind = -1;
            switch (PROBING_SCANNER.getNextToken()) {
                case 1002: {
                    if (PROBING_SCANNER.getNextToken() != 69) break;
                    kind = 32;
                    break;
                }
                case 1001: {
                    if (PROBING_SCANNER.getNextToken() != 69) break;
                    kind = 16;
                    break;
                }
                case 1003: {
                    if (PROBING_SCANNER.getNextToken() != 69) break;
                    kind = 64;
                }
            }
            if (kind != -1) {
                return this.formatComment(kind, source, indentationLevel, lineSeparator, regions);
            }
        }
        catch (InvalidInputException invalidInputException) {}
        PROBING_SCANNER.setSource((char[])null);
        Expression expression = this.codeSnippetParsingUtil.parseExpression(source.toCharArray(), this.getDefaultCompilerOptions(), true);
        if (expression != null) {
            return this.internalFormatExpression(source, indentationLevel, lineSeparator, expression, regions, includeComments);
        }
        ASTNode[] bodyDeclarations = this.codeSnippetParsingUtil.parseClassBodyDeclarations(source.toCharArray(), this.getDefaultCompilerOptions(), true);
        if (bodyDeclarations != null) {
            return this.internalFormatClassBodyDeclarations(source, indentationLevel, lineSeparator, bodyDeclarations, regions, includeComments);
        }
        ConstructorDeclaration constructorDeclaration = this.codeSnippetParsingUtil.parseStatements(source.toCharArray(), this.getDefaultCompilerOptions(), true, false);
        if (constructorDeclaration.statements != null) {
            return this.internalFormatStatements(source, indentationLevel, lineSeparator, constructorDeclaration, regions, includeComments);
        }
        return this.formatCompilationUnit(source, indentationLevel, lineSeparator, regions, includeComments);
    }

    private boolean regionsSatisfiesPreconditions(IRegion[] regions, int maxLength) {
        int regionsLength;
        int n = regionsLength = regions == null ? 0 : regions.length;
        if (regionsLength == 0) {
            return false;
        }
        IRegion first = regions[0];
        if (first.getOffset() < 0 || first.getLength() < 0 || first.getOffset() + first.getLength() > maxLength) {
            return false;
        }
        int lastOffset = first.getOffset() + first.getLength() - 1;
        int i = 1;
        while (i < regionsLength) {
            IRegion current = regions[i];
            if (lastOffset > current.getOffset()) {
                return false;
            }
            if (current.getOffset() < 0 || current.getLength() < 0 || current.getOffset() + current.getLength() > maxLength) {
                return false;
            }
            lastOffset = current.getOffset() + current.getLength() - 1;
            ++i;
        }
        return true;
    }
}

