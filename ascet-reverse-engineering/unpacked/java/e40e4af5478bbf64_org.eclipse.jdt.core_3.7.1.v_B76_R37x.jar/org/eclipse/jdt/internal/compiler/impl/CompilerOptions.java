/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.impl;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.Compiler;
import org.eclipse.jdt.internal.compiler.impl.IrritantSet;
import org.eclipse.jdt.internal.compiler.util.Util;

public class CompilerOptions {
    public static final String OPTION_LocalVariableAttribute = "org.eclipse.jdt.core.compiler.debug.localVariable";
    public static final String OPTION_LineNumberAttribute = "org.eclipse.jdt.core.compiler.debug.lineNumber";
    public static final String OPTION_SourceFileAttribute = "org.eclipse.jdt.core.compiler.debug.sourceFile";
    public static final String OPTION_PreserveUnusedLocal = "org.eclipse.jdt.core.compiler.codegen.unusedLocal";
    public static final String OPTION_DocCommentSupport = "org.eclipse.jdt.core.compiler.doc.comment.support";
    public static final String OPTION_ReportMethodWithConstructorName = "org.eclipse.jdt.core.compiler.problem.methodWithConstructorName";
    public static final String OPTION_ReportOverridingPackageDefaultMethod = "org.eclipse.jdt.core.compiler.problem.overridingPackageDefaultMethod";
    public static final String OPTION_ReportDeprecation = "org.eclipse.jdt.core.compiler.problem.deprecation";
    public static final String OPTION_ReportDeprecationInDeprecatedCode = "org.eclipse.jdt.core.compiler.problem.deprecationInDeprecatedCode";
    public static final String OPTION_ReportDeprecationWhenOverridingDeprecatedMethod = "org.eclipse.jdt.core.compiler.problem.deprecationWhenOverridingDeprecatedMethod";
    public static final String OPTION_ReportHiddenCatchBlock = "org.eclipse.jdt.core.compiler.problem.hiddenCatchBlock";
    public static final String OPTION_ReportUnusedLocal = "org.eclipse.jdt.core.compiler.problem.unusedLocal";
    public static final String OPTION_ReportUnusedParameter = "org.eclipse.jdt.core.compiler.problem.unusedParameter";
    public static final String OPTION_ReportUnusedParameterWhenImplementingAbstract = "org.eclipse.jdt.core.compiler.problem.unusedParameterWhenImplementingAbstract";
    public static final String OPTION_ReportUnusedParameterWhenOverridingConcrete = "org.eclipse.jdt.core.compiler.problem.unusedParameterWhenOverridingConcrete";
    public static final String OPTION_ReportUnusedParameterIncludeDocCommentReference = "org.eclipse.jdt.core.compiler.problem.unusedParameterIncludeDocCommentReference";
    public static final String OPTION_ReportUnusedImport = "org.eclipse.jdt.core.compiler.problem.unusedImport";
    public static final String OPTION_ReportSyntheticAccessEmulation = "org.eclipse.jdt.core.compiler.problem.syntheticAccessEmulation";
    public static final String OPTION_ReportNoEffectAssignment = "org.eclipse.jdt.core.compiler.problem.noEffectAssignment";
    public static final String OPTION_ReportLocalVariableHiding = "org.eclipse.jdt.core.compiler.problem.localVariableHiding";
    public static final String OPTION_ReportSpecialParameterHidingField = "org.eclipse.jdt.core.compiler.problem.specialParameterHidingField";
    public static final String OPTION_ReportFieldHiding = "org.eclipse.jdt.core.compiler.problem.fieldHiding";
    public static final String OPTION_ReportTypeParameterHiding = "org.eclipse.jdt.core.compiler.problem.typeParameterHiding";
    public static final String OPTION_ReportPossibleAccidentalBooleanAssignment = "org.eclipse.jdt.core.compiler.problem.possibleAccidentalBooleanAssignment";
    public static final String OPTION_ReportNonExternalizedStringLiteral = "org.eclipse.jdt.core.compiler.problem.nonExternalizedStringLiteral";
    public static final String OPTION_ReportIncompatibleNonInheritedInterfaceMethod = "org.eclipse.jdt.core.compiler.problem.incompatibleNonInheritedInterfaceMethod";
    public static final String OPTION_ReportUnusedPrivateMember = "org.eclipse.jdt.core.compiler.problem.unusedPrivateMember";
    public static final String OPTION_ReportNoImplicitStringConversion = "org.eclipse.jdt.core.compiler.problem.noImplicitStringConversion";
    public static final String OPTION_ReportAssertIdentifier = "org.eclipse.jdt.core.compiler.problem.assertIdentifier";
    public static final String OPTION_ReportEnumIdentifier = "org.eclipse.jdt.core.compiler.problem.enumIdentifier";
    public static final String OPTION_ReportNonStaticAccessToStatic = "org.eclipse.jdt.core.compiler.problem.staticAccessReceiver";
    public static final String OPTION_ReportIndirectStaticAccess = "org.eclipse.jdt.core.compiler.problem.indirectStaticAccess";
    public static final String OPTION_ReportEmptyStatement = "org.eclipse.jdt.core.compiler.problem.emptyStatement";
    public static final String OPTION_ReportUnnecessaryTypeCheck = "org.eclipse.jdt.core.compiler.problem.unnecessaryTypeCheck";
    public static final String OPTION_ReportUnnecessaryElse = "org.eclipse.jdt.core.compiler.problem.unnecessaryElse";
    public static final String OPTION_ReportUndocumentedEmptyBlock = "org.eclipse.jdt.core.compiler.problem.undocumentedEmptyBlock";
    public static final String OPTION_ReportInvalidJavadoc = "org.eclipse.jdt.core.compiler.problem.invalidJavadoc";
    public static final String OPTION_ReportInvalidJavadocTags = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTags";
    public static final String OPTION_ReportInvalidJavadocTagsDeprecatedRef = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsDeprecatedRef";
    public static final String OPTION_ReportInvalidJavadocTagsNotVisibleRef = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsNotVisibleRef";
    public static final String OPTION_ReportInvalidJavadocTagsVisibility = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsVisibility";
    public static final String OPTION_ReportMissingJavadocTags = "org.eclipse.jdt.core.compiler.problem.missingJavadocTags";
    public static final String OPTION_ReportMissingJavadocTagsVisibility = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsVisibility";
    public static final String OPTION_ReportMissingJavadocTagsOverriding = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsOverriding";
    public static final String OPTION_ReportMissingJavadocTagsMethodTypeParameters = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsMethodTypeParameters";
    public static final String OPTION_ReportMissingJavadocComments = "org.eclipse.jdt.core.compiler.problem.missingJavadocComments";
    public static final String OPTION_ReportMissingJavadocTagDescription = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagDescription";
    public static final String OPTION_ReportMissingJavadocCommentsVisibility = "org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsVisibility";
    public static final String OPTION_ReportMissingJavadocCommentsOverriding = "org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsOverriding";
    public static final String OPTION_ReportFinallyBlockNotCompletingNormally = "org.eclipse.jdt.core.compiler.problem.finallyBlockNotCompletingNormally";
    public static final String OPTION_ReportUnusedDeclaredThrownException = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownException";
    public static final String OPTION_ReportUnusedDeclaredThrownExceptionWhenOverriding = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionWhenOverriding";
    public static final String OPTION_ReportUnusedDeclaredThrownExceptionIncludeDocCommentReference = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionIncludeDocCommentReference";
    public static final String OPTION_ReportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionExemptExceptionAndThrowable";
    public static final String OPTION_ReportUnqualifiedFieldAccess = "org.eclipse.jdt.core.compiler.problem.unqualifiedFieldAccess";
    public static final String OPTION_ReportUnavoidableGenericTypeProblems = "org.eclipse.jdt.core.compiler.problem.unavoidableGenericTypeProblems";
    public static final String OPTION_ReportUncheckedTypeOperation = "org.eclipse.jdt.core.compiler.problem.uncheckedTypeOperation";
    public static final String OPTION_ReportRawTypeReference = "org.eclipse.jdt.core.compiler.problem.rawTypeReference";
    public static final String OPTION_ReportFinalParameterBound = "org.eclipse.jdt.core.compiler.problem.finalParameterBound";
    public static final String OPTION_ReportMissingSerialVersion = "org.eclipse.jdt.core.compiler.problem.missingSerialVersion";
    public static final String OPTION_ReportVarargsArgumentNeedCast = "org.eclipse.jdt.core.compiler.problem.varargsArgumentNeedCast";
    public static final String OPTION_ReportUnusedTypeArgumentsForMethodInvocation = "org.eclipse.jdt.core.compiler.problem.unusedTypeArgumentsForMethodInvocation";
    public static final String OPTION_Source = "org.eclipse.jdt.core.compiler.source";
    public static final String OPTION_TargetPlatform = "org.eclipse.jdt.core.compiler.codegen.targetPlatform";
    public static final String OPTION_Compliance = "org.eclipse.jdt.core.compiler.compliance";
    public static final String OPTION_Encoding = "org.eclipse.jdt.core.encoding";
    public static final String OPTION_MaxProblemPerUnit = "org.eclipse.jdt.core.compiler.maxProblemPerUnit";
    public static final String OPTION_TaskTags = "org.eclipse.jdt.core.compiler.taskTags";
    public static final String OPTION_TaskPriorities = "org.eclipse.jdt.core.compiler.taskPriorities";
    public static final String OPTION_TaskCaseSensitive = "org.eclipse.jdt.core.compiler.taskCaseSensitive";
    public static final String OPTION_InlineJsr = "org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode";
    public static final String OPTION_ReportNullReference = "org.eclipse.jdt.core.compiler.problem.nullReference";
    public static final String OPTION_ReportPotentialNullReference = "org.eclipse.jdt.core.compiler.problem.potentialNullReference";
    public static final String OPTION_ReportRedundantNullCheck = "org.eclipse.jdt.core.compiler.problem.redundantNullCheck";
    public static final String OPTION_ReportAutoboxing = "org.eclipse.jdt.core.compiler.problem.autoboxing";
    public static final String OPTION_ReportAnnotationSuperInterface = "org.eclipse.jdt.core.compiler.problem.annotationSuperInterface";
    public static final String OPTION_ReportMissingOverrideAnnotation = "org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotation";
    public static final String OPTION_ReportMissingOverrideAnnotationForInterfaceMethodImplementation = "org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotationForInterfaceMethodImplementation";
    public static final String OPTION_ReportMissingDeprecatedAnnotation = "org.eclipse.jdt.core.compiler.problem.missingDeprecatedAnnotation";
    public static final String OPTION_ReportIncompleteEnumSwitch = "org.eclipse.jdt.core.compiler.problem.incompleteEnumSwitch";
    public static final String OPTION_ReportForbiddenReference = "org.eclipse.jdt.core.compiler.problem.forbiddenReference";
    public static final String OPTION_ReportDiscouragedReference = "org.eclipse.jdt.core.compiler.problem.discouragedReference";
    public static final String OPTION_SuppressWarnings = "org.eclipse.jdt.core.compiler.problem.suppressWarnings";
    public static final String OPTION_SuppressOptionalErrors = "org.eclipse.jdt.core.compiler.problem.suppressOptionalErrors";
    public static final String OPTION_ReportUnhandledWarningToken = "org.eclipse.jdt.core.compiler.problem.unhandledWarningToken";
    public static final String OPTION_ReportUnusedWarningToken = "org.eclipse.jdt.core.compiler.problem.unusedWarningToken";
    public static final String OPTION_ReportUnusedLabel = "org.eclipse.jdt.core.compiler.problem.unusedLabel";
    public static final String OPTION_FatalOptionalError = "org.eclipse.jdt.core.compiler.problem.fatalOptionalError";
    public static final String OPTION_ReportParameterAssignment = "org.eclipse.jdt.core.compiler.problem.parameterAssignment";
    public static final String OPTION_ReportFallthroughCase = "org.eclipse.jdt.core.compiler.problem.fallthroughCase";
    public static final String OPTION_ReportOverridingMethodWithoutSuperInvocation = "org.eclipse.jdt.core.compiler.problem.overridingMethodWithoutSuperInvocation";
    public static final String OPTION_GenerateClassFiles = "org.eclipse.jdt.core.compiler.generateClassFiles";
    public static final String OPTION_Process_Annotations = "org.eclipse.jdt.core.compiler.processAnnotations";
    public static final String OPTION_ReportRedundantSuperinterface = "org.eclipse.jdt.core.compiler.problem.redundantSuperinterface";
    public static final String OPTION_ReportComparingIdentical = "org.eclipse.jdt.core.compiler.problem.comparingIdentical";
    public static final String OPTION_ReportMissingSynchronizedOnInheritedMethod = "org.eclipse.jdt.core.compiler.problem.missingSynchronizedOnInheritedMethod";
    public static final String OPTION_ReportMissingHashCodeMethod = "org.eclipse.jdt.core.compiler.problem.missingHashCodeMethod";
    public static final String OPTION_ReportDeadCode = "org.eclipse.jdt.core.compiler.problem.deadCode";
    public static final String OPTION_ReportDeadCodeInTrivialIfStatement = "org.eclipse.jdt.core.compiler.problem.deadCodeInTrivialIfStatement";
    public static final String OPTION_ReportTasks = "org.eclipse.jdt.core.compiler.problem.tasks";
    public static final String OPTION_ReportUnusedObjectAllocation = "org.eclipse.jdt.core.compiler.problem.unusedObjectAllocation";
    public static final String OPTION_IncludeNullInfoFromAsserts = "org.eclipse.jdt.core.compiler.problem.includeNullInfoFromAsserts";
    public static final String OPTION_ReportMethodCanBeStatic = "org.eclipse.jdt.core.compiler.problem.reportMethodCanBeStatic";
    public static final String OPTION_ReportMethodCanBePotentiallyStatic = "org.eclipse.jdt.core.compiler.problem.reportMethodCanBePotentiallyStatic";
    public static final String OPTION_ReportRedundantSpecificationOfTypeArguments = "org.eclipse.jdt.core.compiler.problem.redundantSpecificationOfTypeArguments";
    public static final String GENERATE = "generate";
    public static final String DO_NOT_GENERATE = "do not generate";
    public static final String PRESERVE = "preserve";
    public static final String OPTIMIZE_OUT = "optimize out";
    public static final String VERSION_1_1 = "1.1";
    public static final String VERSION_1_2 = "1.2";
    public static final String VERSION_1_3 = "1.3";
    public static final String VERSION_1_4 = "1.4";
    public static final String VERSION_JSR14 = "jsr14";
    public static final String VERSION_CLDC1_1 = "cldc1.1";
    public static final String VERSION_1_5 = "1.5";
    public static final String VERSION_1_6 = "1.6";
    public static final String VERSION_1_7 = "1.7";
    public static final String ERROR = "error";
    public static final String WARNING = "warning";
    public static final String IGNORE = "ignore";
    public static final String ENABLED = "enabled";
    public static final String DISABLED = "disabled";
    public static final String PUBLIC = "public";
    public static final String PROTECTED = "protected";
    public static final String DEFAULT = "default";
    public static final String PRIVATE = "private";
    public static final String RETURN_TAG = "return_tag";
    public static final String NO_TAG = "no_tag";
    public static final String ALL_STANDARD_TAGS = "all_standard_tags";
    public static final int MethodWithConstructorName = 1;
    public static final int OverriddenPackageDefaultMethod = 2;
    public static final int UsingDeprecatedAPI = 4;
    public static final int MaskedCatchBlock = 8;
    public static final int UnusedLocalVariable = 16;
    public static final int UnusedArgument = 32;
    public static final int NoImplicitStringConversion = 64;
    public static final int AccessEmulation = 128;
    public static final int NonExternalizedString = 256;
    public static final int AssertUsedAsAnIdentifier = 512;
    public static final int UnusedImport = 1024;
    public static final int NonStaticAccessToStatic = 2048;
    public static final int Task = 4096;
    public static final int NoEffectAssignment = 8192;
    public static final int IncompatibleNonInheritedInterfaceMethod = 16384;
    public static final int UnusedPrivateMember = 32768;
    public static final int LocalVariableHiding = 65536;
    public static final int FieldHiding = 131072;
    public static final int AccidentalBooleanAssign = 262144;
    public static final int EmptyStatement = 524288;
    public static final int MissingJavadocComments = 0x100000;
    public static final int MissingJavadocTags = 0x200000;
    public static final int UnqualifiedFieldAccess = 0x400000;
    public static final int UnusedDeclaredThrownException = 0x800000;
    public static final int FinallyBlockNotCompleting = 0x1000000;
    public static final int InvalidJavadoc = 0x2000000;
    public static final int UnnecessaryTypeCheck = 0x4000000;
    public static final int UndocumentedEmptyBlock = 0x8000000;
    public static final int IndirectStaticAccess = 0x10000000;
    public static final int UnnecessaryElse = 0x20000001;
    public static final int UncheckedTypeOperation = 0x20000002;
    public static final int FinalParameterBound = 0x20000004;
    public static final int MissingSerialVersion = 0x20000008;
    public static final int EnumUsedAsAnIdentifier = 0x20000010;
    public static final int ForbiddenReference = 0x20000020;
    public static final int VarargsArgumentNeedCast = 0x20000040;
    public static final int NullReference = 0x20000080;
    public static final int AutoBoxing = 0x20000100;
    public static final int AnnotationSuperInterface = 0x20000200;
    public static final int TypeHiding = 0x20000400;
    public static final int MissingOverrideAnnotation = 0x20000800;
    public static final int IncompleteEnumSwitch = 0x20001000;
    public static final int MissingDeprecatedAnnotation = 0x20002000;
    public static final int DiscouragedReference = 0x20004000;
    public static final int UnhandledWarningToken = 0x20008000;
    public static final int RawTypeReference = 0x20010000;
    public static final int UnusedLabel = 0x20020000;
    public static final int ParameterAssignment = 0x20040000;
    public static final int FallthroughCase = 0x20080000;
    public static final int OverridingMethodWithoutSuperInvocation = 0x20100000;
    public static final int PotentialNullReference = 0x20200000;
    public static final int RedundantNullCheck = 0x20400000;
    public static final int MissingJavadocTagDescription = 0x20800000;
    public static final int UnusedTypeArguments = 0x21000000;
    public static final int UnusedWarningToken = 0x22000000;
    public static final int RedundantSuperinterface = 0x24000000;
    public static final int ComparingIdentical = 0x28000000;
    public static final int MissingSynchronizedModifierInInheritedMethod = 0x30000000;
    public static final int ShouldImplementHashcode = 0x40000001;
    public static final int DeadCode = 0x40000002;
    public static final int Tasks = 0x40000004;
    public static final int UnusedObjectAllocation = 0x40000008;
    public static final int MethodCanBeStatic = 0x40000010;
    public static final int MethodCanBePotentiallyStatic = 0x40000020;
    public static final int RedundantSpecificationOfTypeArguments = 0x40000040;
    protected IrritantSet errorThreshold;
    protected IrritantSet warningThreshold;
    public int produceDebugAttributes;
    public long complianceLevel;
    public long originalComplianceLevel;
    public long sourceLevel;
    public long originalSourceLevel;
    public long targetJDK;
    public String defaultEncoding;
    public boolean verbose;
    public boolean produceReferenceInfo;
    public boolean preserveAllLocalVariables;
    public boolean parseLiteralExpressionsAsConstants;
    public int maxProblemsPerUnit;
    public char[][] taskTags;
    public char[][] taskPriorities;
    public boolean isTaskCaseSensitive;
    public boolean reportDeprecationInsideDeprecatedCode;
    public boolean reportDeprecationWhenOverridingDeprecatedMethod;
    public boolean reportUnusedParameterWhenImplementingAbstract;
    public boolean reportUnusedParameterWhenOverridingConcrete;
    public boolean reportUnusedParameterIncludeDocCommentReference;
    public boolean reportUnusedDeclaredThrownExceptionWhenOverriding;
    public boolean reportUnusedDeclaredThrownExceptionIncludeDocCommentReference;
    public boolean reportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable;
    public boolean reportSpecialParameterHidingField;
    public boolean reportDeadCodeInTrivialIfStatement;
    public boolean docCommentSupport;
    public boolean reportInvalidJavadocTags;
    public int reportInvalidJavadocTagsVisibility;
    public boolean reportInvalidJavadocTagsDeprecatedRef;
    public boolean reportInvalidJavadocTagsNotVisibleRef;
    public String reportMissingJavadocTagDescription;
    public int reportMissingJavadocTagsVisibility;
    public boolean reportMissingJavadocTagsOverriding;
    public boolean reportMissingJavadocTagsMethodTypeParameters;
    public int reportMissingJavadocCommentsVisibility;
    public boolean reportMissingJavadocCommentsOverriding;
    public boolean inlineJsrBytecode;
    public boolean suppressWarnings;
    public boolean suppressOptionalErrors;
    public boolean treatOptionalErrorAsFatal;
    public boolean performMethodsFullRecovery;
    public boolean performStatementsRecovery;
    public boolean processAnnotations;
    public boolean storeAnnotations;
    public boolean reportMissingOverrideAnnotationForInterfaceMethodImplementation;
    public boolean generateClassFiles;
    public boolean ignoreMethodBodies;
    public boolean includeNullInfoFromAsserts;
    public boolean reportUnavoidableGenericTypeProblems;
    public static final String[] warningTokens = new String[]{"all", "boxing", "cast", "dep-ann", "deprecation", "fallthrough", "finally", "hiding", "incomplete-switch", "javadoc", "nls", "null", "restriction", "rawtypes", "serial", "static-access", "static-method", "super", "synthetic-access", "unchecked", "unqualified-field-access", "unused"};

    public CompilerOptions() {
        this(null);
    }

    public CompilerOptions(Map settings) {
        this.resetDefaults();
        if (settings != null) {
            this.set(settings);
        }
    }

    public CompilerOptions(Map settings, boolean parseLiteralExpressionsAsConstants) {
        this(settings);
        this.parseLiteralExpressionsAsConstants = parseLiteralExpressionsAsConstants;
    }

    public static String optionKeyFromIrritant(int irritant) {
        switch (irritant) {
            case 1: {
                return OPTION_ReportMethodWithConstructorName;
            }
            case 2: {
                return OPTION_ReportOverridingPackageDefaultMethod;
            }
            case 4: 
            case 0x2000004: {
                return OPTION_ReportDeprecation;
            }
            case 8: {
                return OPTION_ReportHiddenCatchBlock;
            }
            case 16: {
                return OPTION_ReportUnusedLocal;
            }
            case 32: {
                return OPTION_ReportUnusedParameter;
            }
            case 64: {
                return OPTION_ReportNoImplicitStringConversion;
            }
            case 128: {
                return OPTION_ReportSyntheticAccessEmulation;
            }
            case 256: {
                return OPTION_ReportNonExternalizedStringLiteral;
            }
            case 512: {
                return OPTION_ReportAssertIdentifier;
            }
            case 1024: {
                return OPTION_ReportUnusedImport;
            }
            case 2048: {
                return OPTION_ReportNonStaticAccessToStatic;
            }
            case 4096: {
                return OPTION_TaskTags;
            }
            case 8192: {
                return OPTION_ReportNoEffectAssignment;
            }
            case 16384: {
                return OPTION_ReportIncompatibleNonInheritedInterfaceMethod;
            }
            case 32768: {
                return OPTION_ReportUnusedPrivateMember;
            }
            case 65536: {
                return OPTION_ReportLocalVariableHiding;
            }
            case 131072: {
                return OPTION_ReportFieldHiding;
            }
            case 262144: {
                return OPTION_ReportPossibleAccidentalBooleanAssignment;
            }
            case 524288: {
                return OPTION_ReportEmptyStatement;
            }
            case 0x100000: {
                return OPTION_ReportMissingJavadocComments;
            }
            case 0x200000: {
                return OPTION_ReportMissingJavadocTags;
            }
            case 0x400000: {
                return OPTION_ReportUnqualifiedFieldAccess;
            }
            case 0x800000: {
                return OPTION_ReportUnusedDeclaredThrownExceptionWhenOverriding;
            }
            case 0x1000000: {
                return OPTION_ReportFinallyBlockNotCompletingNormally;
            }
            case 0x2000000: {
                return OPTION_ReportInvalidJavadoc;
            }
            case 0x4000000: {
                return OPTION_ReportUnnecessaryTypeCheck;
            }
            case 0x8000000: {
                return OPTION_ReportUndocumentedEmptyBlock;
            }
            case 0x10000000: {
                return OPTION_ReportIndirectStaticAccess;
            }
            case 0x20000001: {
                return OPTION_ReportUnnecessaryElse;
            }
            case 0x20000002: {
                return OPTION_ReportUncheckedTypeOperation;
            }
            case 0x20000004: {
                return OPTION_ReportFinalParameterBound;
            }
            case 0x20000008: {
                return OPTION_ReportMissingSerialVersion;
            }
            case 0x20000010: {
                return OPTION_ReportEnumIdentifier;
            }
            case 0x20000020: {
                return OPTION_ReportForbiddenReference;
            }
            case 0x20000040: {
                return OPTION_ReportVarargsArgumentNeedCast;
            }
            case 0x20000080: {
                return OPTION_ReportNullReference;
            }
            case 0x20200000: {
                return OPTION_ReportPotentialNullReference;
            }
            case 0x20400000: {
                return OPTION_ReportRedundantNullCheck;
            }
            case 0x20000100: {
                return OPTION_ReportAutoboxing;
            }
            case 0x20000200: {
                return OPTION_ReportAnnotationSuperInterface;
            }
            case 0x20000400: {
                return OPTION_ReportTypeParameterHiding;
            }
            case 0x20000800: {
                return OPTION_ReportMissingOverrideAnnotation;
            }
            case 0x20001000: {
                return OPTION_ReportIncompleteEnumSwitch;
            }
            case 0x20002000: {
                return OPTION_ReportMissingDeprecatedAnnotation;
            }
            case 0x20004000: {
                return OPTION_ReportDiscouragedReference;
            }
            case 0x20008000: {
                return OPTION_ReportUnhandledWarningToken;
            }
            case 0x20010000: {
                return OPTION_ReportRawTypeReference;
            }
            case 0x20020000: {
                return OPTION_ReportUnusedLabel;
            }
            case 0x20040000: {
                return OPTION_ReportParameterAssignment;
            }
            case 0x20080000: {
                return OPTION_ReportFallthroughCase;
            }
            case 0x20100000: {
                return OPTION_ReportOverridingMethodWithoutSuperInvocation;
            }
            case 0x20800000: {
                return OPTION_ReportMissingJavadocTagDescription;
            }
            case 0x21000000: {
                return OPTION_ReportUnusedTypeArgumentsForMethodInvocation;
            }
            case 0x22000000: {
                return OPTION_ReportUnusedWarningToken;
            }
            case 0x24000000: {
                return OPTION_ReportRedundantSuperinterface;
            }
            case 0x28000000: {
                return OPTION_ReportComparingIdentical;
            }
            case 0x30000000: {
                return OPTION_ReportMissingSynchronizedOnInheritedMethod;
            }
            case 0x40000001: {
                return OPTION_ReportMissingHashCodeMethod;
            }
            case 0x40000002: {
                return OPTION_ReportDeadCode;
            }
            case 0x40000008: {
                return OPTION_ReportUnusedObjectAllocation;
            }
            case 0x40000010: {
                return OPTION_ReportMethodCanBeStatic;
            }
            case 0x40000020: {
                return OPTION_ReportMethodCanBePotentiallyStatic;
            }
            case 0x40000040: {
                return OPTION_ReportRedundantSpecificationOfTypeArguments;
            }
        }
        return null;
    }

    public static String versionFromJdkLevel(long jdkLevel) {
        switch ((int)(jdkLevel >> 16)) {
            case 45: {
                if (jdkLevel != 2949123L) break;
                return VERSION_1_1;
            }
            case 46: {
                if (jdkLevel != 0x2E0000L) break;
                return VERSION_1_2;
            }
            case 47: {
                if (jdkLevel != 0x2F0000L) break;
                return VERSION_1_3;
            }
            case 48: {
                if (jdkLevel != 0x300000L) break;
                return VERSION_1_4;
            }
            case 49: {
                if (jdkLevel != 0x310000L) break;
                return VERSION_1_5;
            }
            case 50: {
                if (jdkLevel != 0x320000L) break;
                return VERSION_1_6;
            }
            case 51: {
                if (jdkLevel != 0x330000L) break;
                return VERSION_1_7;
            }
        }
        return Util.EMPTY_STRING;
    }

    public static long versionToJdkLevel(Object versionID) {
        if (versionID instanceof String) {
            String version = (String)versionID;
            if (version.length() == 3 && version.charAt(0) == '1' && version.charAt(1) == '.') {
                switch (version.charAt(2)) {
                    case '1': {
                        return 2949123L;
                    }
                    case '2': {
                        return 0x2E0000L;
                    }
                    case '3': {
                        return 0x2F0000L;
                    }
                    case '4': {
                        return 0x300000L;
                    }
                    case '5': {
                        return 0x310000L;
                    }
                    case '6': {
                        return 0x320000L;
                    }
                    case '7': {
                        return 0x330000L;
                    }
                }
                return 0L;
            }
            if (VERSION_JSR14.equals(versionID)) {
                return 0x300000L;
            }
            if (VERSION_CLDC1_1.equals(versionID)) {
                return 2949124L;
            }
        }
        return 0L;
    }

    public static String[] warningOptionNames() {
        String[] result = new String[]{OPTION_ReportAnnotationSuperInterface, OPTION_ReportAssertIdentifier, OPTION_ReportAutoboxing, OPTION_ReportComparingIdentical, OPTION_ReportDeadCode, OPTION_ReportDeadCodeInTrivialIfStatement, OPTION_ReportDeprecation, OPTION_ReportDeprecationInDeprecatedCode, OPTION_ReportDeprecationWhenOverridingDeprecatedMethod, OPTION_ReportDiscouragedReference, OPTION_ReportEmptyStatement, OPTION_ReportEnumIdentifier, OPTION_ReportFallthroughCase, OPTION_ReportFieldHiding, OPTION_ReportFinallyBlockNotCompletingNormally, OPTION_ReportFinalParameterBound, OPTION_ReportForbiddenReference, OPTION_ReportHiddenCatchBlock, OPTION_ReportIncompatibleNonInheritedInterfaceMethod, OPTION_ReportIncompleteEnumSwitch, OPTION_ReportIndirectStaticAccess, OPTION_ReportInvalidJavadoc, OPTION_ReportInvalidJavadocTags, OPTION_ReportInvalidJavadocTagsDeprecatedRef, OPTION_ReportInvalidJavadocTagsNotVisibleRef, OPTION_ReportInvalidJavadocTagsVisibility, OPTION_ReportLocalVariableHiding, OPTION_ReportMethodCanBePotentiallyStatic, OPTION_ReportMethodCanBeStatic, OPTION_ReportMethodWithConstructorName, OPTION_ReportMissingDeprecatedAnnotation, OPTION_ReportMissingHashCodeMethod, OPTION_ReportMissingJavadocComments, OPTION_ReportMissingJavadocCommentsOverriding, OPTION_ReportMissingJavadocCommentsVisibility, OPTION_ReportMissingJavadocTagDescription, OPTION_ReportMissingJavadocTags, OPTION_ReportMissingJavadocTagsMethodTypeParameters, OPTION_ReportMissingJavadocTagsOverriding, OPTION_ReportMissingJavadocTagsVisibility, OPTION_ReportMissingOverrideAnnotation, OPTION_ReportMissingOverrideAnnotationForInterfaceMethodImplementation, OPTION_ReportMissingSerialVersion, OPTION_ReportMissingSynchronizedOnInheritedMethod, OPTION_ReportNoEffectAssignment, OPTION_ReportNoImplicitStringConversion, OPTION_ReportNonExternalizedStringLiteral, OPTION_ReportNonStaticAccessToStatic, OPTION_ReportNullReference, OPTION_ReportOverridingMethodWithoutSuperInvocation, OPTION_ReportOverridingPackageDefaultMethod, OPTION_ReportParameterAssignment, OPTION_ReportPossibleAccidentalBooleanAssignment, OPTION_ReportPotentialNullReference, OPTION_ReportRawTypeReference, OPTION_ReportRedundantNullCheck, OPTION_ReportRedundantSuperinterface, OPTION_ReportRedundantSpecificationOfTypeArguments, OPTION_ReportSpecialParameterHidingField, OPTION_ReportSyntheticAccessEmulation, OPTION_ReportTasks, OPTION_ReportTypeParameterHiding, OPTION_ReportUnavoidableGenericTypeProblems, OPTION_ReportUncheckedTypeOperation, OPTION_ReportUndocumentedEmptyBlock, OPTION_ReportUnhandledWarningToken, OPTION_ReportUnnecessaryElse, OPTION_ReportUnnecessaryTypeCheck, OPTION_ReportUnqualifiedFieldAccess, OPTION_ReportUnusedDeclaredThrownException, OPTION_ReportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable, OPTION_ReportUnusedDeclaredThrownExceptionIncludeDocCommentReference, OPTION_ReportUnusedDeclaredThrownExceptionWhenOverriding, OPTION_ReportUnusedImport, OPTION_ReportUnusedLabel, OPTION_ReportUnusedLocal, OPTION_ReportUnusedObjectAllocation, OPTION_ReportUnusedParameter, OPTION_ReportUnusedParameterIncludeDocCommentReference, OPTION_ReportUnusedParameterWhenImplementingAbstract, OPTION_ReportUnusedParameterWhenOverridingConcrete, OPTION_ReportUnusedPrivateMember, OPTION_ReportUnusedTypeArgumentsForMethodInvocation, OPTION_ReportUnusedWarningToken, OPTION_ReportVarargsArgumentNeedCast};
        return result;
    }

    public static String warningTokenFromIrritant(int irritant) {
        switch (irritant) {
            case 4: 
            case 0x2000004: {
                return "deprecation";
            }
            case 0x1000000: {
                return "finally";
            }
            case 8: 
            case 65536: 
            case 131072: {
                return "hiding";
            }
            case 256: {
                return "nls";
            }
            case 0x4000000: {
                return "cast";
            }
            case 2048: 
            case 0x10000000: {
                return "static-access";
            }
            case 128: {
                return "synthetic-access";
            }
            case 0x400000: {
                return "unqualified-field-access";
            }
            case 0x20000002: {
                return "unchecked";
            }
            case 0x20000008: {
                return "serial";
            }
            case 0x20000100: {
                return "boxing";
            }
            case 0x20000400: {
                return "hiding";
            }
            case 0x20001000: {
                return "incomplete-switch";
            }
            case 0x20002000: {
                return "dep-ann";
            }
            case 0x20010000: {
                return "rawtypes";
            }
            case 16: 
            case 32: 
            case 1024: 
            case 32768: 
            case 0x800000: 
            case 0x20020000: 
            case 0x21000000: 
            case 0x24000000: 
            case 0x40000002: 
            case 0x40000008: 
            case 0x40000040: {
                return "unused";
            }
            case 0x20000020: 
            case 0x20004000: {
                return "restriction";
            }
            case 0x20000080: 
            case 0x20200000: 
            case 0x20400000: {
                return "null";
            }
            case 0x20080000: {
                return "fallthrough";
            }
            case 0x20100000: {
                return "super";
            }
            case 0x40000010: 
            case 0x40000020: {
                return "static-method";
            }
            case 0x100000: 
            case 0x200000: 
            case 0x2000000: {
                return "javadoc";
            }
        }
        return null;
    }

    public static IrritantSet warningTokenToIrritants(String warningToken) {
        if (warningToken == null || warningToken.length() == 0) {
            return null;
        }
        switch (warningToken.charAt(0)) {
            case 'a': {
                if (!"all".equals(warningToken)) break;
                return IrritantSet.ALL;
            }
            case 'b': {
                if (!"boxing".equals(warningToken)) break;
                return IrritantSet.BOXING;
            }
            case 'c': {
                if (!"cast".equals(warningToken)) break;
                return IrritantSet.CAST;
            }
            case 'd': {
                if ("deprecation".equals(warningToken)) {
                    return IrritantSet.DEPRECATION;
                }
                if (!"dep-ann".equals(warningToken)) break;
                return IrritantSet.DEP_ANN;
            }
            case 'f': {
                if ("fallthrough".equals(warningToken)) {
                    return IrritantSet.FALLTHROUGH;
                }
                if (!"finally".equals(warningToken)) break;
                return IrritantSet.FINALLY;
            }
            case 'h': {
                if (!"hiding".equals(warningToken)) break;
                return IrritantSet.HIDING;
            }
            case 'i': {
                if (!"incomplete-switch".equals(warningToken)) break;
                return IrritantSet.INCOMPLETE_SWITCH;
            }
            case 'j': {
                if (!"javadoc".equals(warningToken)) break;
                return IrritantSet.JAVADOC;
            }
            case 'n': {
                if ("nls".equals(warningToken)) {
                    return IrritantSet.NLS;
                }
                if (!"null".equals(warningToken)) break;
                return IrritantSet.NULL;
            }
            case 'r': {
                if ("rawtypes".equals(warningToken)) {
                    return IrritantSet.RAW;
                }
                if (!"restriction".equals(warningToken)) break;
                return IrritantSet.RESTRICTION;
            }
            case 's': {
                if ("serial".equals(warningToken)) {
                    return IrritantSet.SERIAL;
                }
                if ("static-access".equals(warningToken)) {
                    return IrritantSet.STATIC_ACCESS;
                }
                if ("static-method".equals(warningToken)) {
                    return IrritantSet.STATIC_METHOD;
                }
                if ("synthetic-access".equals(warningToken)) {
                    return IrritantSet.SYNTHETIC_ACCESS;
                }
                if (!"super".equals(warningToken)) break;
                return IrritantSet.SUPER;
            }
            case 'u': {
                if ("unused".equals(warningToken)) {
                    return IrritantSet.UNUSED;
                }
                if ("unchecked".equals(warningToken)) {
                    return IrritantSet.UNCHECKED;
                }
                if (!"unqualified-field-access".equals(warningToken)) break;
                return IrritantSet.UNQUALIFIED_FIELD_ACCESS;
            }
        }
        return null;
    }

    public Map getMap() {
        HashMap<String, String> optionsMap = new HashMap<String, String>(30);
        optionsMap.put(OPTION_LocalVariableAttribute, (this.produceDebugAttributes & 4) != 0 ? GENERATE : DO_NOT_GENERATE);
        optionsMap.put(OPTION_LineNumberAttribute, (this.produceDebugAttributes & 2) != 0 ? GENERATE : DO_NOT_GENERATE);
        optionsMap.put(OPTION_SourceFileAttribute, (this.produceDebugAttributes & 1) != 0 ? GENERATE : DO_NOT_GENERATE);
        optionsMap.put(OPTION_PreserveUnusedLocal, this.preserveAllLocalVariables ? PRESERVE : OPTIMIZE_OUT);
        optionsMap.put(OPTION_DocCommentSupport, this.docCommentSupport ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportMethodWithConstructorName, this.getSeverityString(1));
        optionsMap.put(OPTION_ReportOverridingPackageDefaultMethod, this.getSeverityString(2));
        optionsMap.put(OPTION_ReportDeprecation, this.getSeverityString(4));
        optionsMap.put(OPTION_ReportDeprecationInDeprecatedCode, this.reportDeprecationInsideDeprecatedCode ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportDeprecationWhenOverridingDeprecatedMethod, this.reportDeprecationWhenOverridingDeprecatedMethod ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportHiddenCatchBlock, this.getSeverityString(8));
        optionsMap.put(OPTION_ReportUnusedLocal, this.getSeverityString(16));
        optionsMap.put(OPTION_ReportUnusedParameter, this.getSeverityString(32));
        optionsMap.put(OPTION_ReportUnusedImport, this.getSeverityString(1024));
        optionsMap.put(OPTION_ReportSyntheticAccessEmulation, this.getSeverityString(128));
        optionsMap.put(OPTION_ReportNoEffectAssignment, this.getSeverityString(8192));
        optionsMap.put(OPTION_ReportNonExternalizedStringLiteral, this.getSeverityString(256));
        optionsMap.put(OPTION_ReportNoImplicitStringConversion, this.getSeverityString(64));
        optionsMap.put(OPTION_ReportNonStaticAccessToStatic, this.getSeverityString(2048));
        optionsMap.put(OPTION_ReportIndirectStaticAccess, this.getSeverityString(0x10000000));
        optionsMap.put(OPTION_ReportIncompatibleNonInheritedInterfaceMethod, this.getSeverityString(16384));
        optionsMap.put(OPTION_ReportUnusedPrivateMember, this.getSeverityString(32768));
        optionsMap.put(OPTION_ReportLocalVariableHiding, this.getSeverityString(65536));
        optionsMap.put(OPTION_ReportFieldHiding, this.getSeverityString(131072));
        optionsMap.put(OPTION_ReportTypeParameterHiding, this.getSeverityString(0x20000400));
        optionsMap.put(OPTION_ReportPossibleAccidentalBooleanAssignment, this.getSeverityString(262144));
        optionsMap.put(OPTION_ReportEmptyStatement, this.getSeverityString(524288));
        optionsMap.put(OPTION_ReportAssertIdentifier, this.getSeverityString(512));
        optionsMap.put(OPTION_ReportEnumIdentifier, this.getSeverityString(0x20000010));
        optionsMap.put(OPTION_ReportUndocumentedEmptyBlock, this.getSeverityString(0x8000000));
        optionsMap.put(OPTION_ReportUnnecessaryTypeCheck, this.getSeverityString(0x4000000));
        optionsMap.put(OPTION_ReportUnnecessaryElse, this.getSeverityString(0x20000001));
        optionsMap.put(OPTION_ReportAutoboxing, this.getSeverityString(0x20000100));
        optionsMap.put(OPTION_ReportAnnotationSuperInterface, this.getSeverityString(0x20000200));
        optionsMap.put(OPTION_ReportIncompleteEnumSwitch, this.getSeverityString(0x20001000));
        optionsMap.put(OPTION_ReportInvalidJavadoc, this.getSeverityString(0x2000000));
        optionsMap.put(OPTION_ReportInvalidJavadocTagsVisibility, this.getVisibilityString(this.reportInvalidJavadocTagsVisibility));
        optionsMap.put(OPTION_ReportInvalidJavadocTags, this.reportInvalidJavadocTags ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportInvalidJavadocTagsDeprecatedRef, this.reportInvalidJavadocTagsDeprecatedRef ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportInvalidJavadocTagsNotVisibleRef, this.reportInvalidJavadocTagsNotVisibleRef ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportMissingJavadocTags, this.getSeverityString(0x200000));
        optionsMap.put(OPTION_ReportMissingJavadocTagsVisibility, this.getVisibilityString(this.reportMissingJavadocTagsVisibility));
        optionsMap.put(OPTION_ReportMissingJavadocTagsOverriding, this.reportMissingJavadocTagsOverriding ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportMissingJavadocTagsMethodTypeParameters, this.reportMissingJavadocTagsMethodTypeParameters ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportMissingJavadocComments, this.getSeverityString(0x100000));
        optionsMap.put(OPTION_ReportMissingJavadocTagDescription, this.reportMissingJavadocTagDescription);
        optionsMap.put(OPTION_ReportMissingJavadocCommentsVisibility, this.getVisibilityString(this.reportMissingJavadocCommentsVisibility));
        optionsMap.put(OPTION_ReportMissingJavadocCommentsOverriding, this.reportMissingJavadocCommentsOverriding ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportFinallyBlockNotCompletingNormally, this.getSeverityString(0x1000000));
        optionsMap.put(OPTION_ReportUnusedDeclaredThrownException, this.getSeverityString(0x800000));
        optionsMap.put(OPTION_ReportUnusedDeclaredThrownExceptionWhenOverriding, this.reportUnusedDeclaredThrownExceptionWhenOverriding ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportUnusedDeclaredThrownExceptionIncludeDocCommentReference, this.reportUnusedDeclaredThrownExceptionIncludeDocCommentReference ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable, this.reportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportUnqualifiedFieldAccess, this.getSeverityString(0x400000));
        optionsMap.put(OPTION_ReportUnavoidableGenericTypeProblems, this.reportUnavoidableGenericTypeProblems ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportUncheckedTypeOperation, this.getSeverityString(0x20000002));
        optionsMap.put(OPTION_ReportRawTypeReference, this.getSeverityString(0x20010000));
        optionsMap.put(OPTION_ReportFinalParameterBound, this.getSeverityString(0x20000004));
        optionsMap.put(OPTION_ReportMissingSerialVersion, this.getSeverityString(0x20000008));
        optionsMap.put(OPTION_ReportForbiddenReference, this.getSeverityString(0x20000020));
        optionsMap.put(OPTION_ReportDiscouragedReference, this.getSeverityString(0x20004000));
        optionsMap.put(OPTION_ReportVarargsArgumentNeedCast, this.getSeverityString(0x20000040));
        optionsMap.put(OPTION_ReportMissingOverrideAnnotation, this.getSeverityString(0x20000800));
        optionsMap.put(OPTION_ReportMissingOverrideAnnotationForInterfaceMethodImplementation, this.reportMissingOverrideAnnotationForInterfaceMethodImplementation ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportMissingDeprecatedAnnotation, this.getSeverityString(0x20002000));
        optionsMap.put(OPTION_ReportIncompleteEnumSwitch, this.getSeverityString(0x20001000));
        optionsMap.put(OPTION_ReportUnusedLabel, this.getSeverityString(0x20020000));
        optionsMap.put(OPTION_ReportUnusedTypeArgumentsForMethodInvocation, this.getSeverityString(0x21000000));
        optionsMap.put(OPTION_Compliance, CompilerOptions.versionFromJdkLevel(this.complianceLevel));
        optionsMap.put(OPTION_Source, CompilerOptions.versionFromJdkLevel(this.sourceLevel));
        optionsMap.put(OPTION_TargetPlatform, CompilerOptions.versionFromJdkLevel(this.targetJDK));
        optionsMap.put(OPTION_FatalOptionalError, this.treatOptionalErrorAsFatal ? ENABLED : DISABLED);
        if (this.defaultEncoding != null) {
            optionsMap.put(OPTION_Encoding, this.defaultEncoding);
        }
        optionsMap.put(OPTION_TaskTags, this.taskTags == null ? Util.EMPTY_STRING : new String(CharOperation.concatWith(this.taskTags, ',')));
        optionsMap.put(OPTION_TaskPriorities, this.taskPriorities == null ? Util.EMPTY_STRING : new String(CharOperation.concatWith(this.taskPriorities, ',')));
        optionsMap.put(OPTION_TaskCaseSensitive, this.isTaskCaseSensitive ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportUnusedParameterWhenImplementingAbstract, this.reportUnusedParameterWhenImplementingAbstract ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportUnusedParameterWhenOverridingConcrete, this.reportUnusedParameterWhenOverridingConcrete ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportUnusedParameterIncludeDocCommentReference, this.reportUnusedParameterIncludeDocCommentReference ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportSpecialParameterHidingField, this.reportSpecialParameterHidingField ? ENABLED : DISABLED);
        optionsMap.put(OPTION_MaxProblemPerUnit, String.valueOf(this.maxProblemsPerUnit));
        optionsMap.put(OPTION_InlineJsr, this.inlineJsrBytecode ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportNullReference, this.getSeverityString(0x20000080));
        optionsMap.put(OPTION_ReportPotentialNullReference, this.getSeverityString(0x20200000));
        optionsMap.put(OPTION_ReportRedundantNullCheck, this.getSeverityString(0x20400000));
        optionsMap.put(OPTION_SuppressWarnings, this.suppressWarnings ? ENABLED : DISABLED);
        optionsMap.put(OPTION_SuppressOptionalErrors, this.suppressOptionalErrors ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportUnhandledWarningToken, this.getSeverityString(0x20008000));
        optionsMap.put(OPTION_ReportUnusedWarningToken, this.getSeverityString(0x22000000));
        optionsMap.put(OPTION_ReportParameterAssignment, this.getSeverityString(0x20040000));
        optionsMap.put(OPTION_ReportFallthroughCase, this.getSeverityString(0x20080000));
        optionsMap.put(OPTION_ReportOverridingMethodWithoutSuperInvocation, this.getSeverityString(0x20100000));
        optionsMap.put(OPTION_GenerateClassFiles, this.generateClassFiles ? ENABLED : DISABLED);
        optionsMap.put(OPTION_Process_Annotations, this.processAnnotations ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportRedundantSuperinterface, this.getSeverityString(0x24000000));
        optionsMap.put(OPTION_ReportComparingIdentical, this.getSeverityString(0x28000000));
        optionsMap.put(OPTION_ReportMissingSynchronizedOnInheritedMethod, this.getSeverityString(0x30000000));
        optionsMap.put(OPTION_ReportMissingHashCodeMethod, this.getSeverityString(0x40000001));
        optionsMap.put(OPTION_ReportDeadCode, this.getSeverityString(0x40000002));
        optionsMap.put(OPTION_ReportDeadCodeInTrivialIfStatement, this.reportDeadCodeInTrivialIfStatement ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportTasks, this.getSeverityString(0x40000004));
        optionsMap.put(OPTION_ReportUnusedObjectAllocation, this.getSeverityString(0x40000008));
        optionsMap.put(OPTION_IncludeNullInfoFromAsserts, this.includeNullInfoFromAsserts ? ENABLED : DISABLED);
        optionsMap.put(OPTION_ReportMethodCanBeStatic, this.getSeverityString(0x40000010));
        optionsMap.put(OPTION_ReportMethodCanBePotentiallyStatic, this.getSeverityString(0x40000020));
        optionsMap.put(OPTION_ReportRedundantSpecificationOfTypeArguments, this.getSeverityString(0x40000040));
        return optionsMap;
    }

    public int getSeverity(int irritant) {
        if (this.errorThreshold.isSet(irritant)) {
            if ((irritant & 0xE2000000) == 0x22000000) {
                return 33;
            }
            return this.treatOptionalErrorAsFatal ? 161 : 33;
        }
        if (this.warningThreshold.isSet(irritant)) {
            return 32;
        }
        return 256;
    }

    public String getSeverityString(int irritant) {
        if (this.errorThreshold.isSet(irritant)) {
            return ERROR;
        }
        if (this.warningThreshold.isSet(irritant)) {
            return WARNING;
        }
        return IGNORE;
    }

    public String getVisibilityString(int level) {
        switch (level & 7) {
            case 1: {
                return PUBLIC;
            }
            case 4: {
                return PROTECTED;
            }
            case 2: {
                return PRIVATE;
            }
        }
        return DEFAULT;
    }

    public boolean isAnyEnabled(IrritantSet irritants) {
        return this.warningThreshold.isAnySet(irritants) || this.errorThreshold.isAnySet(irritants);
    }

    protected void resetDefaults() {
        this.errorThreshold = new IrritantSet(IrritantSet.COMPILER_DEFAULT_ERRORS);
        this.warningThreshold = new IrritantSet(IrritantSet.COMPILER_DEFAULT_WARNINGS);
        this.produceDebugAttributes = 3;
        this.originalComplianceLevel = 0x300000L;
        this.complianceLevel = 0x300000L;
        this.originalSourceLevel = 0x2F0000L;
        this.sourceLevel = 0x2F0000L;
        this.targetJDK = 0x2E0000L;
        this.defaultEncoding = null;
        this.verbose = Compiler.DEBUG;
        this.produceReferenceInfo = false;
        this.preserveAllLocalVariables = false;
        this.parseLiteralExpressionsAsConstants = true;
        this.maxProblemsPerUnit = 100;
        this.taskTags = null;
        this.taskPriorities = null;
        this.isTaskCaseSensitive = true;
        this.reportDeprecationInsideDeprecatedCode = false;
        this.reportDeprecationWhenOverridingDeprecatedMethod = false;
        this.reportUnusedParameterWhenImplementingAbstract = false;
        this.reportUnusedParameterWhenOverridingConcrete = false;
        this.reportUnusedParameterIncludeDocCommentReference = true;
        this.reportUnusedDeclaredThrownExceptionWhenOverriding = false;
        this.reportUnusedDeclaredThrownExceptionIncludeDocCommentReference = true;
        this.reportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable = true;
        this.reportSpecialParameterHidingField = false;
        this.reportUnavoidableGenericTypeProblems = true;
        this.reportInvalidJavadocTagsVisibility = 1;
        this.reportInvalidJavadocTags = false;
        this.reportInvalidJavadocTagsDeprecatedRef = false;
        this.reportInvalidJavadocTagsNotVisibleRef = false;
        this.reportMissingJavadocTagDescription = RETURN_TAG;
        this.reportMissingJavadocTagsVisibility = 1;
        this.reportMissingJavadocTagsOverriding = false;
        this.reportMissingJavadocTagsMethodTypeParameters = false;
        this.reportMissingJavadocCommentsVisibility = 1;
        this.reportMissingJavadocCommentsOverriding = false;
        this.inlineJsrBytecode = false;
        this.docCommentSupport = false;
        this.suppressWarnings = true;
        this.suppressOptionalErrors = false;
        this.treatOptionalErrorAsFatal = false;
        this.performMethodsFullRecovery = true;
        this.performStatementsRecovery = true;
        this.storeAnnotations = false;
        this.generateClassFiles = true;
        this.processAnnotations = false;
        this.reportMissingOverrideAnnotationForInterfaceMethodImplementation = true;
        this.reportDeadCodeInTrivialIfStatement = false;
        this.ignoreMethodBodies = false;
        this.includeNullInfoFromAsserts = false;
    }

    public void set(Map optionsMap) {
        long level;
        Object optionValue = optionsMap.get(OPTION_LocalVariableAttribute);
        if (optionValue != null) {
            if (GENERATE.equals(optionValue)) {
                this.produceDebugAttributes |= 4;
            } else if (DO_NOT_GENERATE.equals(optionValue)) {
                this.produceDebugAttributes &= 0xFFFFFFFB;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_LineNumberAttribute)) != null) {
            if (GENERATE.equals(optionValue)) {
                this.produceDebugAttributes |= 2;
            } else if (DO_NOT_GENERATE.equals(optionValue)) {
                this.produceDebugAttributes &= 0xFFFFFFFD;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_SourceFileAttribute)) != null) {
            if (GENERATE.equals(optionValue)) {
                this.produceDebugAttributes |= 1;
            } else if (DO_NOT_GENERATE.equals(optionValue)) {
                this.produceDebugAttributes &= 0xFFFFFFFE;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_PreserveUnusedLocal)) != null) {
            if (PRESERVE.equals(optionValue)) {
                this.preserveAllLocalVariables = true;
            } else if (OPTIMIZE_OUT.equals(optionValue)) {
                this.preserveAllLocalVariables = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportDeprecationInDeprecatedCode)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.reportDeprecationInsideDeprecatedCode = true;
            } else if (DISABLED.equals(optionValue)) {
                this.reportDeprecationInsideDeprecatedCode = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportDeprecationWhenOverridingDeprecatedMethod)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.reportDeprecationWhenOverridingDeprecatedMethod = true;
            } else if (DISABLED.equals(optionValue)) {
                this.reportDeprecationWhenOverridingDeprecatedMethod = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnusedDeclaredThrownExceptionWhenOverriding)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.reportUnusedDeclaredThrownExceptionWhenOverriding = true;
            } else if (DISABLED.equals(optionValue)) {
                this.reportUnusedDeclaredThrownExceptionWhenOverriding = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnusedDeclaredThrownExceptionIncludeDocCommentReference)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.reportUnusedDeclaredThrownExceptionIncludeDocCommentReference = true;
            } else if (DISABLED.equals(optionValue)) {
                this.reportUnusedDeclaredThrownExceptionIncludeDocCommentReference = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.reportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable = true;
            } else if (DISABLED.equals(optionValue)) {
                this.reportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_Compliance)) != null && (level = CompilerOptions.versionToJdkLevel(optionValue)) != 0L) {
            this.complianceLevel = this.originalComplianceLevel = level;
        }
        if ((optionValue = optionsMap.get(OPTION_Source)) != null && (level = CompilerOptions.versionToJdkLevel(optionValue)) != 0L) {
            this.sourceLevel = this.originalSourceLevel = level;
        }
        if ((optionValue = optionsMap.get(OPTION_TargetPlatform)) != null) {
            level = CompilerOptions.versionToJdkLevel(optionValue);
            if (level != 0L) {
                this.targetJDK = level;
            }
            if (this.targetJDK >= 0x310000L) {
                this.inlineJsrBytecode = true;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_Encoding)) != null && optionValue instanceof String) {
            this.defaultEncoding = null;
            String stringValue = (String)optionValue;
            if (stringValue.length() > 0) {
                try {
                    new InputStreamReader((InputStream)new ByteArrayInputStream(new byte[0]), stringValue);
                    this.defaultEncoding = stringValue;
                }
                catch (UnsupportedEncodingException unsupportedEncodingException) {}
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnusedParameterWhenImplementingAbstract)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.reportUnusedParameterWhenImplementingAbstract = true;
            } else if (DISABLED.equals(optionValue)) {
                this.reportUnusedParameterWhenImplementingAbstract = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnusedParameterWhenOverridingConcrete)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.reportUnusedParameterWhenOverridingConcrete = true;
            } else if (DISABLED.equals(optionValue)) {
                this.reportUnusedParameterWhenOverridingConcrete = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnusedParameterIncludeDocCommentReference)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.reportUnusedParameterIncludeDocCommentReference = true;
            } else if (DISABLED.equals(optionValue)) {
                this.reportUnusedParameterIncludeDocCommentReference = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportSpecialParameterHidingField)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.reportSpecialParameterHidingField = true;
            } else if (DISABLED.equals(optionValue)) {
                this.reportSpecialParameterHidingField = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnavoidableGenericTypeProblems)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.reportUnavoidableGenericTypeProblems = true;
            } else if (DISABLED.equals(optionValue)) {
                this.reportUnavoidableGenericTypeProblems = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportDeadCodeInTrivialIfStatement)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.reportDeadCodeInTrivialIfStatement = true;
            } else if (DISABLED.equals(optionValue)) {
                this.reportDeadCodeInTrivialIfStatement = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_MaxProblemPerUnit)) != null && optionValue instanceof String) {
            String stringValue = (String)optionValue;
            try {
                int val = Integer.parseInt(stringValue);
                if (val >= 0) {
                    this.maxProblemsPerUnit = val;
                }
            }
            catch (NumberFormatException numberFormatException) {}
        }
        if ((optionValue = optionsMap.get(OPTION_TaskTags)) != null && optionValue instanceof String) {
            String stringValue = (String)optionValue;
            this.taskTags = (char[][])(stringValue.length() == 0 ? null : CharOperation.splitAndTrimOn(',', stringValue.toCharArray()));
        }
        if ((optionValue = optionsMap.get(OPTION_TaskPriorities)) != null && optionValue instanceof String) {
            String stringValue = (String)optionValue;
            this.taskPriorities = (char[][])(stringValue.length() == 0 ? null : CharOperation.splitAndTrimOn(',', stringValue.toCharArray()));
        }
        if ((optionValue = optionsMap.get(OPTION_TaskCaseSensitive)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.isTaskCaseSensitive = true;
            } else if (DISABLED.equals(optionValue)) {
                this.isTaskCaseSensitive = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_InlineJsr)) != null && this.targetJDK < 0x310000L) {
            if (ENABLED.equals(optionValue)) {
                this.inlineJsrBytecode = true;
            } else if (DISABLED.equals(optionValue)) {
                this.inlineJsrBytecode = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_SuppressWarnings)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.suppressWarnings = true;
            } else if (DISABLED.equals(optionValue)) {
                this.suppressWarnings = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_SuppressOptionalErrors)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.suppressOptionalErrors = true;
            } else if (DISABLED.equals(optionValue)) {
                this.suppressOptionalErrors = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_FatalOptionalError)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.treatOptionalErrorAsFatal = true;
            } else if (DISABLED.equals(optionValue)) {
                this.treatOptionalErrorAsFatal = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportMissingOverrideAnnotationForInterfaceMethodImplementation)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.reportMissingOverrideAnnotationForInterfaceMethodImplementation = true;
            } else if (DISABLED.equals(optionValue)) {
                this.reportMissingOverrideAnnotationForInterfaceMethodImplementation = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_IncludeNullInfoFromAsserts)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.includeNullInfoFromAsserts = true;
            } else if (DISABLED.equals(optionValue)) {
                this.includeNullInfoFromAsserts = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportMethodWithConstructorName)) != null) {
            this.updateSeverity(1, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportOverridingPackageDefaultMethod)) != null) {
            this.updateSeverity(2, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportDeprecation)) != null) {
            this.updateSeverity(4, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportHiddenCatchBlock)) != null) {
            this.updateSeverity(8, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnusedLocal)) != null) {
            this.updateSeverity(16, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnusedParameter)) != null) {
            this.updateSeverity(32, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnusedImport)) != null) {
            this.updateSeverity(1024, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnusedPrivateMember)) != null) {
            this.updateSeverity(32768, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnusedDeclaredThrownException)) != null) {
            this.updateSeverity(0x800000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportNoImplicitStringConversion)) != null) {
            this.updateSeverity(64, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportSyntheticAccessEmulation)) != null) {
            this.updateSeverity(128, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportLocalVariableHiding)) != null) {
            this.updateSeverity(65536, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportFieldHiding)) != null) {
            this.updateSeverity(131072, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportTypeParameterHiding)) != null) {
            this.updateSeverity(0x20000400, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportPossibleAccidentalBooleanAssignment)) != null) {
            this.updateSeverity(262144, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportEmptyStatement)) != null) {
            this.updateSeverity(524288, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportNonExternalizedStringLiteral)) != null) {
            this.updateSeverity(256, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportAssertIdentifier)) != null) {
            this.updateSeverity(512, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportEnumIdentifier)) != null) {
            this.updateSeverity(0x20000010, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportNonStaticAccessToStatic)) != null) {
            this.updateSeverity(2048, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportIndirectStaticAccess)) != null) {
            this.updateSeverity(0x10000000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportIncompatibleNonInheritedInterfaceMethod)) != null) {
            this.updateSeverity(16384, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUndocumentedEmptyBlock)) != null) {
            this.updateSeverity(0x8000000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnnecessaryTypeCheck)) != null) {
            this.updateSeverity(0x4000000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnnecessaryElse)) != null) {
            this.updateSeverity(0x20000001, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportFinallyBlockNotCompletingNormally)) != null) {
            this.updateSeverity(0x1000000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnqualifiedFieldAccess)) != null) {
            this.updateSeverity(0x400000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportNoEffectAssignment)) != null) {
            this.updateSeverity(8192, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUncheckedTypeOperation)) != null) {
            this.updateSeverity(0x20000002, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportRawTypeReference)) != null) {
            this.updateSeverity(0x20010000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportFinalParameterBound)) != null) {
            this.updateSeverity(0x20000004, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportMissingSerialVersion)) != null) {
            this.updateSeverity(0x20000008, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportForbiddenReference)) != null) {
            this.updateSeverity(0x20000020, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportDiscouragedReference)) != null) {
            this.updateSeverity(0x20004000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportVarargsArgumentNeedCast)) != null) {
            this.updateSeverity(0x20000040, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportNullReference)) != null) {
            this.updateSeverity(0x20000080, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportPotentialNullReference)) != null) {
            this.updateSeverity(0x20200000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportRedundantNullCheck)) != null) {
            this.updateSeverity(0x20400000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportAutoboxing)) != null) {
            this.updateSeverity(0x20000100, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportAnnotationSuperInterface)) != null) {
            this.updateSeverity(0x20000200, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportMissingOverrideAnnotation)) != null) {
            this.updateSeverity(0x20000800, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportMissingDeprecatedAnnotation)) != null) {
            this.updateSeverity(0x20002000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportIncompleteEnumSwitch)) != null) {
            this.updateSeverity(0x20001000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnhandledWarningToken)) != null) {
            this.updateSeverity(0x20008000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnusedWarningToken)) != null) {
            this.updateSeverity(0x22000000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnusedLabel)) != null) {
            this.updateSeverity(0x20020000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportParameterAssignment)) != null) {
            this.updateSeverity(0x20040000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportFallthroughCase)) != null) {
            this.updateSeverity(0x20080000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportOverridingMethodWithoutSuperInvocation)) != null) {
            this.updateSeverity(0x20100000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnusedTypeArgumentsForMethodInvocation)) != null) {
            this.updateSeverity(0x21000000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportRedundantSuperinterface)) != null) {
            this.updateSeverity(0x24000000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportComparingIdentical)) != null) {
            this.updateSeverity(0x28000000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportMissingSynchronizedOnInheritedMethod)) != null) {
            this.updateSeverity(0x30000000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportMissingHashCodeMethod)) != null) {
            this.updateSeverity(0x40000001, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportDeadCode)) != null) {
            this.updateSeverity(0x40000002, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportTasks)) != null) {
            this.updateSeverity(0x40000004, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportUnusedObjectAllocation)) != null) {
            this.updateSeverity(0x40000008, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportMethodCanBeStatic)) != null) {
            this.updateSeverity(0x40000010, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportMethodCanBePotentiallyStatic)) != null) {
            this.updateSeverity(0x40000020, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportRedundantSpecificationOfTypeArguments)) != null) {
            this.updateSeverity(0x40000040, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_DocCommentSupport)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.docCommentSupport = true;
            } else if (DISABLED.equals(optionValue)) {
                this.docCommentSupport = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportInvalidJavadoc)) != null) {
            this.updateSeverity(0x2000000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportInvalidJavadocTagsVisibility)) != null) {
            if (PUBLIC.equals(optionValue)) {
                this.reportInvalidJavadocTagsVisibility = 1;
            } else if (PROTECTED.equals(optionValue)) {
                this.reportInvalidJavadocTagsVisibility = 4;
            } else if (DEFAULT.equals(optionValue)) {
                this.reportInvalidJavadocTagsVisibility = 0;
            } else if (PRIVATE.equals(optionValue)) {
                this.reportInvalidJavadocTagsVisibility = 2;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportInvalidJavadocTags)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.reportInvalidJavadocTags = true;
            } else if (DISABLED.equals(optionValue)) {
                this.reportInvalidJavadocTags = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportInvalidJavadocTagsDeprecatedRef)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.reportInvalidJavadocTagsDeprecatedRef = true;
            } else if (DISABLED.equals(optionValue)) {
                this.reportInvalidJavadocTagsDeprecatedRef = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportInvalidJavadocTagsNotVisibleRef)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.reportInvalidJavadocTagsNotVisibleRef = true;
            } else if (DISABLED.equals(optionValue)) {
                this.reportInvalidJavadocTagsNotVisibleRef = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportMissingJavadocTags)) != null) {
            this.updateSeverity(0x200000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportMissingJavadocTagsVisibility)) != null) {
            if (PUBLIC.equals(optionValue)) {
                this.reportMissingJavadocTagsVisibility = 1;
            } else if (PROTECTED.equals(optionValue)) {
                this.reportMissingJavadocTagsVisibility = 4;
            } else if (DEFAULT.equals(optionValue)) {
                this.reportMissingJavadocTagsVisibility = 0;
            } else if (PRIVATE.equals(optionValue)) {
                this.reportMissingJavadocTagsVisibility = 2;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportMissingJavadocTagsOverriding)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.reportMissingJavadocTagsOverriding = true;
            } else if (DISABLED.equals(optionValue)) {
                this.reportMissingJavadocTagsOverriding = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportMissingJavadocTagsMethodTypeParameters)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.reportMissingJavadocTagsMethodTypeParameters = true;
            } else if (DISABLED.equals(optionValue)) {
                this.reportMissingJavadocTagsMethodTypeParameters = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportMissingJavadocComments)) != null) {
            this.updateSeverity(0x100000, optionValue);
        }
        if ((optionValue = optionsMap.get(OPTION_ReportMissingJavadocTagDescription)) != null) {
            this.reportMissingJavadocTagDescription = (String)optionValue;
        }
        if ((optionValue = optionsMap.get(OPTION_ReportMissingJavadocCommentsVisibility)) != null) {
            if (PUBLIC.equals(optionValue)) {
                this.reportMissingJavadocCommentsVisibility = 1;
            } else if (PROTECTED.equals(optionValue)) {
                this.reportMissingJavadocCommentsVisibility = 4;
            } else if (DEFAULT.equals(optionValue)) {
                this.reportMissingJavadocCommentsVisibility = 0;
            } else if (PRIVATE.equals(optionValue)) {
                this.reportMissingJavadocCommentsVisibility = 2;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_ReportMissingJavadocCommentsOverriding)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.reportMissingJavadocCommentsOverriding = true;
            } else if (DISABLED.equals(optionValue)) {
                this.reportMissingJavadocCommentsOverriding = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_GenerateClassFiles)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.generateClassFiles = true;
            } else if (DISABLED.equals(optionValue)) {
                this.generateClassFiles = false;
            }
        }
        if ((optionValue = optionsMap.get(OPTION_Process_Annotations)) != null) {
            if (ENABLED.equals(optionValue)) {
                this.processAnnotations = true;
                this.storeAnnotations = true;
            } else if (DISABLED.equals(optionValue)) {
                this.processAnnotations = false;
                this.storeAnnotations = false;
            }
        }
    }

    public String toString() {
        StringBuffer buf = new StringBuffer("CompilerOptions:");
        buf.append("\n\t- local variables debug attributes: ").append((this.produceDebugAttributes & 4) != 0 ? "ON" : " OFF");
        buf.append("\n\t- line number debug attributes: ").append((this.produceDebugAttributes & 2) != 0 ? "ON" : " OFF");
        buf.append("\n\t- source debug attributes: ").append((this.produceDebugAttributes & 1) != 0 ? "ON" : " OFF");
        buf.append("\n\t- preserve all local variables: ").append(this.preserveAllLocalVariables ? "ON" : " OFF");
        buf.append("\n\t- method with constructor name: ").append(this.getSeverityString(1));
        buf.append("\n\t- overridden package default method: ").append(this.getSeverityString(2));
        buf.append("\n\t- deprecation: ").append(this.getSeverityString(4));
        buf.append("\n\t- masked catch block: ").append(this.getSeverityString(8));
        buf.append("\n\t- unused local variable: ").append(this.getSeverityString(16));
        buf.append("\n\t- unused parameter: ").append(this.getSeverityString(32));
        buf.append("\n\t- unused import: ").append(this.getSeverityString(1024));
        buf.append("\n\t- synthetic access emulation: ").append(this.getSeverityString(128));
        buf.append("\n\t- assignment with no effect: ").append(this.getSeverityString(8192));
        buf.append("\n\t- non externalized string: ").append(this.getSeverityString(256));
        buf.append("\n\t- static access receiver: ").append(this.getSeverityString(2048));
        buf.append("\n\t- indirect static access: ").append(this.getSeverityString(0x10000000));
        buf.append("\n\t- incompatible non inherited interface method: ").append(this.getSeverityString(16384));
        buf.append("\n\t- unused private member: ").append(this.getSeverityString(32768));
        buf.append("\n\t- local variable hiding another variable: ").append(this.getSeverityString(65536));
        buf.append("\n\t- field hiding another variable: ").append(this.getSeverityString(131072));
        buf.append("\n\t- type hiding another type: ").append(this.getSeverityString(0x20000400));
        buf.append("\n\t- possible accidental boolean assignment: ").append(this.getSeverityString(262144));
        buf.append("\n\t- superfluous semicolon: ").append(this.getSeverityString(524288));
        buf.append("\n\t- uncommented empty block: ").append(this.getSeverityString(0x8000000));
        buf.append("\n\t- unnecessary type check: ").append(this.getSeverityString(0x4000000));
        buf.append("\n\t- javadoc comment support: ").append(this.docCommentSupport ? "ON" : " OFF");
        buf.append("\n\t\t+ invalid javadoc: ").append(this.getSeverityString(0x2000000));
        buf.append("\n\t\t+ report invalid javadoc tags: ").append(this.reportInvalidJavadocTags ? ENABLED : DISABLED);
        buf.append("\n\t\t\t* deprecated references: ").append(this.reportInvalidJavadocTagsDeprecatedRef ? ENABLED : DISABLED);
        buf.append("\n\t\t\t* not visible references: ").append(this.reportInvalidJavadocTagsNotVisibleRef ? ENABLED : DISABLED);
        buf.append("\n\t\t+ visibility level to report invalid javadoc tags: ").append(this.getVisibilityString(this.reportInvalidJavadocTagsVisibility));
        buf.append("\n\t\t+ missing javadoc tags: ").append(this.getSeverityString(0x200000));
        buf.append("\n\t\t+ visibility level to report missing javadoc tags: ").append(this.getVisibilityString(this.reportMissingJavadocTagsVisibility));
        buf.append("\n\t\t+ report missing javadoc tags for method type parameters: ").append(this.reportMissingJavadocTagsMethodTypeParameters ? ENABLED : DISABLED);
        buf.append("\n\t\t+ report missing javadoc tags in overriding methods: ").append(this.reportMissingJavadocTagsOverriding ? ENABLED : DISABLED);
        buf.append("\n\t\t+ missing javadoc comments: ").append(this.getSeverityString(0x100000));
        buf.append("\n\t\t+ report missing tag description option: ").append(this.reportMissingJavadocTagDescription);
        buf.append("\n\t\t+ visibility level to report missing javadoc comments: ").append(this.getVisibilityString(this.reportMissingJavadocCommentsVisibility));
        buf.append("\n\t\t+ report missing javadoc comments in overriding methods: ").append(this.reportMissingJavadocCommentsOverriding ? ENABLED : DISABLED);
        buf.append("\n\t- finally block not completing normally: ").append(this.getSeverityString(0x1000000));
        buf.append("\n\t- report unused declared thrown exception: ").append(this.getSeverityString(0x800000));
        buf.append("\n\t- report unused declared thrown exception when overriding: ").append(this.reportUnusedDeclaredThrownExceptionWhenOverriding ? ENABLED : DISABLED);
        buf.append("\n\t- report unused declared thrown exception include doc comment reference: ").append(this.reportUnusedDeclaredThrownExceptionIncludeDocCommentReference ? ENABLED : DISABLED);
        buf.append("\n\t- report unused declared thrown exception exempt exception and throwable: ").append(this.reportUnusedDeclaredThrownExceptionExemptExceptionAndThrowable ? ENABLED : DISABLED);
        buf.append("\n\t- unnecessary else: ").append(this.getSeverityString(0x20000001));
        buf.append("\n\t- JDK compliance level: " + CompilerOptions.versionFromJdkLevel(this.complianceLevel));
        buf.append("\n\t- JDK source level: " + CompilerOptions.versionFromJdkLevel(this.sourceLevel));
        buf.append("\n\t- JDK target level: " + CompilerOptions.versionFromJdkLevel(this.targetJDK));
        buf.append("\n\t- verbose : ").append(this.verbose ? "ON" : "OFF");
        buf.append("\n\t- produce reference info : ").append(this.produceReferenceInfo ? "ON" : "OFF");
        buf.append("\n\t- parse literal expressions as constants : ").append(this.parseLiteralExpressionsAsConstants ? "ON" : "OFF");
        buf.append("\n\t- encoding : ").append(this.defaultEncoding == null ? "<default>" : this.defaultEncoding);
        buf.append("\n\t- task tags: ").append(this.taskTags == null ? Util.EMPTY_STRING : new String(CharOperation.concatWith(this.taskTags, ',')));
        buf.append("\n\t- task priorities : ").append(this.taskPriorities == null ? Util.EMPTY_STRING : new String(CharOperation.concatWith(this.taskPriorities, ',')));
        buf.append("\n\t- report deprecation inside deprecated code : ").append(this.reportDeprecationInsideDeprecatedCode ? ENABLED : DISABLED);
        buf.append("\n\t- report deprecation when overriding deprecated method : ").append(this.reportDeprecationWhenOverridingDeprecatedMethod ? ENABLED : DISABLED);
        buf.append("\n\t- report unused parameter when implementing abstract method : ").append(this.reportUnusedParameterWhenImplementingAbstract ? ENABLED : DISABLED);
        buf.append("\n\t- report unused parameter when overriding concrete method : ").append(this.reportUnusedParameterWhenOverridingConcrete ? ENABLED : DISABLED);
        buf.append("\n\t- report unused parameter include doc comment reference : ").append(this.reportUnusedParameterIncludeDocCommentReference ? ENABLED : DISABLED);
        buf.append("\n\t- report constructor/setter parameter hiding existing field : ").append(this.reportSpecialParameterHidingField ? ENABLED : DISABLED);
        buf.append("\n\t- inline JSR bytecode : ").append(this.inlineJsrBytecode ? ENABLED : DISABLED);
        buf.append("\n\t- report unavoidable generic type problems : ").append(this.reportUnavoidableGenericTypeProblems ? ENABLED : DISABLED);
        buf.append("\n\t- unsafe type operation: ").append(this.getSeverityString(0x20000002));
        buf.append("\n\t- unsafe raw type: ").append(this.getSeverityString(0x20010000));
        buf.append("\n\t- final bound for type parameter: ").append(this.getSeverityString(0x20000004));
        buf.append("\n\t- missing serialVersionUID: ").append(this.getSeverityString(0x20000008));
        buf.append("\n\t- varargs argument need cast: ").append(this.getSeverityString(0x20000040));
        buf.append("\n\t- forbidden reference to type with access restriction: ").append(this.getSeverityString(0x20000020));
        buf.append("\n\t- discouraged reference to type with access restriction: ").append(this.getSeverityString(0x20004000));
        buf.append("\n\t- null reference: ").append(this.getSeverityString(0x20000080));
        buf.append("\n\t- potential null reference: ").append(this.getSeverityString(0x20200000));
        buf.append("\n\t- redundant null check: ").append(this.getSeverityString(0x20400000));
        buf.append("\n\t- autoboxing: ").append(this.getSeverityString(0x20000100));
        buf.append("\n\t- annotation super interface: ").append(this.getSeverityString(0x20000200));
        buf.append("\n\t- missing @Override annotation: ").append(this.getSeverityString(0x20000800));
        buf.append("\n\t- missing @Override annotation for interface method implementation: ").append(this.reportMissingOverrideAnnotationForInterfaceMethodImplementation ? ENABLED : DISABLED);
        buf.append("\n\t- missing @Deprecated annotation: ").append(this.getSeverityString(0x20002000));
        buf.append("\n\t- incomplete enum switch: ").append(this.getSeverityString(0x20001000));
        buf.append("\n\t- raise null related warnings for variables tainted in assert statements: ").append(this.includeNullInfoFromAsserts ? ENABLED : DISABLED);
        buf.append("\n\t- suppress warnings: ").append(this.suppressWarnings ? ENABLED : DISABLED);
        buf.append("\n\t- suppress optional errors: ").append(this.suppressOptionalErrors ? ENABLED : DISABLED);
        buf.append("\n\t- unhandled warning token: ").append(this.getSeverityString(0x20008000));
        buf.append("\n\t- unused warning token: ").append(this.getSeverityString(0x22000000));
        buf.append("\n\t- unused label: ").append(this.getSeverityString(0x20020000));
        buf.append("\n\t- treat optional error as fatal: ").append(this.treatOptionalErrorAsFatal ? ENABLED : DISABLED);
        buf.append("\n\t- parameter assignment: ").append(this.getSeverityString(0x20040000));
        buf.append("\n\t- generate class files: ").append(this.generateClassFiles ? ENABLED : DISABLED);
        buf.append("\n\t- process annotations: ").append(this.processAnnotations ? ENABLED : DISABLED);
        buf.append("\n\t- unused type arguments for method/constructor invocation: ").append(this.getSeverityString(0x21000000));
        buf.append("\n\t- redundant superinterface: ").append(this.getSeverityString(0x24000000));
        buf.append("\n\t- comparing identical expr: ").append(this.getSeverityString(0x28000000));
        buf.append("\n\t- missing synchronized on inherited method: ").append(this.getSeverityString(0x30000000));
        buf.append("\n\t- should implement hashCode() method: ").append(this.getSeverityString(0x40000001));
        buf.append("\n\t- dead code: ").append(this.getSeverityString(0x40000002));
        buf.append("\n\t- dead code in trivial if statement: ").append(this.reportDeadCodeInTrivialIfStatement ? ENABLED : DISABLED);
        buf.append("\n\t- tasks severity: ").append(this.getSeverityString(0x40000004));
        buf.append("\n\t- unused object allocation: ").append(this.getSeverityString(0x40000008));
        buf.append("\n\t- method can be static: ").append(this.getSeverityString(0x40000010));
        buf.append("\n\t- method can be potentially static: ").append(this.getSeverityString(0x40000020));
        buf.append("\n\t- redundant specification of type arguments: ").append(this.getSeverityString(0x40000040));
        return buf.toString();
    }

    protected void updateSeverity(int irritant, Object severityString) {
        if (ERROR.equals(severityString)) {
            this.errorThreshold.set(irritant);
            this.warningThreshold.clear(irritant);
        } else if (WARNING.equals(severityString)) {
            this.errorThreshold.clear(irritant);
            this.warningThreshold.set(irritant);
        } else if (IGNORE.equals(severityString)) {
            this.errorThreshold.clear(irritant);
            this.warningThreshold.clear(irritant);
        }
    }
}

