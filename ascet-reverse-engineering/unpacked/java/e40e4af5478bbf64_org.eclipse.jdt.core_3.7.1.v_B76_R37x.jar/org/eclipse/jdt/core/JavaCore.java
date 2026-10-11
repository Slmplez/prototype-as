/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IContainer
 *  org.eclipse.core.resources.IFile
 *  org.eclipse.core.resources.IFolder
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.IMarkerDelta
 *  org.eclipse.core.resources.IProject
 *  org.eclipse.core.resources.IResource
 *  org.eclipse.core.resources.IResourceChangeListener
 *  org.eclipse.core.resources.IWorkspace
 *  org.eclipse.core.resources.IWorkspaceRoot
 *  org.eclipse.core.resources.IWorkspaceRunnable
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IConfigurationElement
 *  org.eclipse.core.runtime.IExtension
 *  org.eclipse.core.runtime.IExtensionPoint
 *  org.eclipse.core.runtime.IPath
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Path
 *  org.eclipse.core.runtime.Platform
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.core.runtime.QualifiedName
 *  org.eclipse.core.runtime.SubProgressMonitor
 *  org.eclipse.core.runtime.jobs.ISchedulingRule
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.jdt.core;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Map;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.IMarkerDelta;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.IResourceChangeListener;
import org.eclipse.core.resources.IWorkspace;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.resources.IWorkspaceRunnable;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IConfigurationElement;
import org.eclipse.core.runtime.IExtension;
import org.eclipse.core.runtime.IExtensionPoint;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.Platform;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.core.runtime.QualifiedName;
import org.eclipse.core.runtime.SubProgressMonitor;
import org.eclipse.core.runtime.jobs.ISchedulingRule;
import org.eclipse.jdt.core.ClasspathContainerInitializer;
import org.eclipse.jdt.core.ClasspathVariableInitializer;
import org.eclipse.jdt.core.IAccessRule;
import org.eclipse.jdt.core.IBufferFactory;
import org.eclipse.jdt.core.IClassFile;
import org.eclipse.jdt.core.IClasspathAttribute;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IElementChangedListener;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaModel;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IMember;
import org.eclipse.jdt.core.IPackageFragment;
import org.eclipse.jdt.core.IPackageFragmentRoot;
import org.eclipse.jdt.core.IRegion;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.ITypeHierarchy;
import org.eclipse.jdt.core.IWorkingCopy;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.core.search.TypeNameRequestor;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.core.BatchOperation;
import org.eclipse.jdt.internal.core.BufferFactoryWrapper;
import org.eclipse.jdt.internal.core.BufferManager;
import org.eclipse.jdt.internal.core.ClasspathAccessRule;
import org.eclipse.jdt.internal.core.ClasspathAttribute;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.CreateTypeHierarchyOperation;
import org.eclipse.jdt.internal.core.DefaultWorkingCopyOwner;
import org.eclipse.jdt.internal.core.ExternalFoldersManager;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.Region;
import org.eclipse.jdt.internal.core.SetContainerOperation;
import org.eclipse.jdt.internal.core.SetVariablesOperation;
import org.eclipse.jdt.internal.core.builder.JavaBuilder;
import org.eclipse.jdt.internal.core.builder.State;
import org.eclipse.jdt.internal.core.util.MementoTokenizer;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;
import org.osgi.framework.BundleContext;

public final class JavaCore
extends Plugin {
    private static final IResource[] NO_GENERATED_RESOURCES = new IResource[0];
    private static Plugin JAVA_CORE_PLUGIN = null;
    public static final String PLUGIN_ID = "org.eclipse.jdt.core";
    public static final String BUILDER_ID = "org.eclipse.jdt.core.javabuilder";
    public static final String MODEL_ID = "org.eclipse.jdt.core.javamodel";
    public static final String NATURE_ID = "org.eclipse.jdt.core.javanature";
    protected static final String ATT_HANDLE_ID = "org.eclipse.jdt.internal.core.JavaModelManager.handleId";
    public static final String USER_LIBRARY_CONTAINER_ID = "org.eclipse.jdt.USER_LIBRARY";
    public static final String COMPILER_LOCAL_VARIABLE_ATTR = "org.eclipse.jdt.core.compiler.debug.localVariable";
    public static final String COMPILER_LINE_NUMBER_ATTR = "org.eclipse.jdt.core.compiler.debug.lineNumber";
    public static final String COMPILER_SOURCE_FILE_ATTR = "org.eclipse.jdt.core.compiler.debug.sourceFile";
    public static final String COMPILER_CODEGEN_UNUSED_LOCAL = "org.eclipse.jdt.core.compiler.codegen.unusedLocal";
    public static final String COMPILER_CODEGEN_TARGET_PLATFORM = "org.eclipse.jdt.core.compiler.codegen.targetPlatform";
    public static final String COMPILER_CODEGEN_INLINE_JSR_BYTECODE = "org.eclipse.jdt.core.compiler.codegen.inlineJsrBytecode";
    public static final String COMPILER_DOC_COMMENT_SUPPORT = "org.eclipse.jdt.core.compiler.doc.comment.support";
    public static final String COMPILER_PB_UNREACHABLE_CODE = "org.eclipse.jdt.core.compiler.problem.unreachableCode";
    public static final String COMPILER_PB_INVALID_IMPORT = "org.eclipse.jdt.core.compiler.problem.invalidImport";
    public static final String COMPILER_PB_OVERRIDING_PACKAGE_DEFAULT_METHOD = "org.eclipse.jdt.core.compiler.problem.overridingPackageDefaultMethod";
    public static final String COMPILER_PB_METHOD_WITH_CONSTRUCTOR_NAME = "org.eclipse.jdt.core.compiler.problem.methodWithConstructorName";
    public static final String COMPILER_PB_DEPRECATION = "org.eclipse.jdt.core.compiler.problem.deprecation";
    public static final String COMPILER_PB_DEPRECATION_IN_DEPRECATED_CODE = "org.eclipse.jdt.core.compiler.problem.deprecationInDeprecatedCode";
    public static final String COMPILER_PB_DEPRECATION_WHEN_OVERRIDING_DEPRECATED_METHOD = "org.eclipse.jdt.core.compiler.problem.deprecationWhenOverridingDeprecatedMethod";
    public static final String COMPILER_PB_HIDDEN_CATCH_BLOCK = "org.eclipse.jdt.core.compiler.problem.hiddenCatchBlock";
    public static final String COMPILER_PB_UNUSED_LOCAL = "org.eclipse.jdt.core.compiler.problem.unusedLocal";
    public static final String COMPILER_PB_UNUSED_PARAMETER = "org.eclipse.jdt.core.compiler.problem.unusedParameter";
    public static final String COMPILER_PB_UNUSED_PARAMETER_WHEN_IMPLEMENTING_ABSTRACT = "org.eclipse.jdt.core.compiler.problem.unusedParameterWhenImplementingAbstract";
    public static final String COMPILER_PB_UNUSED_PARAMETER_WHEN_OVERRIDING_CONCRETE = "org.eclipse.jdt.core.compiler.problem.unusedParameterWhenOverridingConcrete";
    public static final String COMPILER_PB_UNUSED_PARAMETER_INCLUDE_DOC_COMMENT_REFERENCE = "org.eclipse.jdt.core.compiler.problem.unusedParameterIncludeDocCommentReference";
    public static final String COMPILER_PB_UNUSED_IMPORT = "org.eclipse.jdt.core.compiler.problem.unusedImport";
    public static final String COMPILER_PB_UNUSED_TYPE_ARGUMENTS_FOR_METHOD_INVOCATION = "org.eclipse.jdt.core.compiler.problem.unusedTypeArgumentsForMethodInvocation";
    public static final String COMPILER_PB_SYNTHETIC_ACCESS_EMULATION = "org.eclipse.jdt.core.compiler.problem.syntheticAccessEmulation";
    public static final String COMPILER_PB_NON_NLS_STRING_LITERAL = "org.eclipse.jdt.core.compiler.problem.nonExternalizedStringLiteral";
    public static final String COMPILER_PB_ASSERT_IDENTIFIER = "org.eclipse.jdt.core.compiler.problem.assertIdentifier";
    public static final String COMPILER_PB_ENUM_IDENTIFIER = "org.eclipse.jdt.core.compiler.problem.enumIdentifier";
    public static final String COMPILER_PB_STATIC_ACCESS_RECEIVER = "org.eclipse.jdt.core.compiler.problem.staticAccessReceiver";
    public static final String COMPILER_PB_INDIRECT_STATIC_ACCESS = "org.eclipse.jdt.core.compiler.problem.indirectStaticAccess";
    public static final String COMPILER_PB_NO_EFFECT_ASSIGNMENT = "org.eclipse.jdt.core.compiler.problem.noEffectAssignment";
    public static final String COMPILER_PB_INCOMPATIBLE_NON_INHERITED_INTERFACE_METHOD = "org.eclipse.jdt.core.compiler.problem.incompatibleNonInheritedInterfaceMethod";
    public static final String COMPILER_PB_UNUSED_PRIVATE_MEMBER = "org.eclipse.jdt.core.compiler.problem.unusedPrivateMember";
    public static final String COMPILER_PB_LOCAL_VARIABLE_HIDING = "org.eclipse.jdt.core.compiler.problem.localVariableHiding";
    public static final String COMPILER_PB_SPECIAL_PARAMETER_HIDING_FIELD = "org.eclipse.jdt.core.compiler.problem.specialParameterHidingField";
    public static final String COMPILER_PB_FIELD_HIDING = "org.eclipse.jdt.core.compiler.problem.fieldHiding";
    public static final String COMPILER_PB_TYPE_PARAMETER_HIDING = "org.eclipse.jdt.core.compiler.problem.typeParameterHiding";
    public static final String COMPILER_PB_POSSIBLE_ACCIDENTAL_BOOLEAN_ASSIGNMENT = "org.eclipse.jdt.core.compiler.problem.possibleAccidentalBooleanAssignment";
    public static final String COMPILER_PB_FALLTHROUGH_CASE = "org.eclipse.jdt.core.compiler.problem.fallthroughCase";
    public static final String COMPILER_PB_EMPTY_STATEMENT = "org.eclipse.jdt.core.compiler.problem.emptyStatement";
    public static final String COMPILER_PB_BOOLEAN_METHOD_THROWING_EXCEPTION = "org.eclipse.jdt.core.compiler.problem.booleanMethodThrowingException";
    public static final String COMPILER_PB_UNNECESSARY_TYPE_CHECK = "org.eclipse.jdt.core.compiler.problem.unnecessaryTypeCheck";
    public static final String COMPILER_PB_UNNECESSARY_ELSE = "org.eclipse.jdt.core.compiler.problem.unnecessaryElse";
    public static final String COMPILER_PB_UNDOCUMENTED_EMPTY_BLOCK = "org.eclipse.jdt.core.compiler.problem.undocumentedEmptyBlock";
    public static final String COMPILER_PB_FINALLY_BLOCK_NOT_COMPLETING = "org.eclipse.jdt.core.compiler.problem.finallyBlockNotCompletingNormally";
    public static final String COMPILER_PB_UNUSED_DECLARED_THROWN_EXCEPTION = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownException";
    public static final String COMPILER_PB_UNUSED_DECLARED_THROWN_EXCEPTION_WHEN_OVERRIDING = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionWhenOverriding";
    public static final String COMPILER_PB_UNUSED_DECLARED_THROWN_EXCEPTION_INCLUDE_DOC_COMMENT_REFERENCE = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionIncludeDocCommentReference";
    public static final String COMPILER_PB_UNUSED_DECLARED_THROWN_EXCEPTION_EXEMPT_EXCEPTION_AND_THROWABLE = "org.eclipse.jdt.core.compiler.problem.unusedDeclaredThrownExceptionExemptExceptionAndThrowable";
    public static final String COMPILER_PB_UNQUALIFIED_FIELD_ACCESS = "org.eclipse.jdt.core.compiler.problem.unqualifiedFieldAccess";
    public static final String COMPILER_PB_UNSAFE_TYPE_OPERATION = "org.eclipse.jdt.core.compiler.problem.uncheckedTypeOperation";
    public static final String COMPILER_PB_UNCHECKED_TYPE_OPERATION = "org.eclipse.jdt.core.compiler.problem.uncheckedTypeOperation";
    public static final String COMPILER_PB_RAW_TYPE_REFERENCE = "org.eclipse.jdt.core.compiler.problem.rawTypeReference";
    public static final String COMPILER_PB_UNAVOIDABLE_GENERIC_TYPE_PROBLEMS = "org.eclipse.jdt.core.compiler.problem.unavoidableGenericTypeProblems";
    public static final String COMPILER_PB_FINAL_PARAMETER_BOUND = "org.eclipse.jdt.core.compiler.problem.finalParameterBound";
    public static final String COMPILER_PB_MISSING_SERIAL_VERSION = "org.eclipse.jdt.core.compiler.problem.missingSerialVersion";
    public static final String COMPILER_PB_VARARGS_ARGUMENT_NEED_CAST = "org.eclipse.jdt.core.compiler.problem.varargsArgumentNeedCast";
    public static final String COMPILER_PB_AUTOBOXING = "org.eclipse.jdt.core.compiler.problem.autoboxing";
    public static final String COMPILER_PB_ANNOTATION_SUPER_INTERFACE = "org.eclipse.jdt.core.compiler.problem.annotationSuperInterface";
    public static final String COMPILER_PB_MISSING_OVERRIDE_ANNOTATION = "org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotation";
    public static final String COMPILER_PB_MISSING_OVERRIDE_ANNOTATION_FOR_INTERFACE_METHOD_IMPLEMENTATION = "org.eclipse.jdt.core.compiler.problem.missingOverrideAnnotationForInterfaceMethodImplementation";
    public static final String COMPILER_PB_MISSING_DEPRECATED_ANNOTATION = "org.eclipse.jdt.core.compiler.problem.missingDeprecatedAnnotation";
    public static final String COMPILER_PB_MISSING_HASHCODE_METHOD = "org.eclipse.jdt.core.compiler.problem.missingHashCodeMethod";
    public static final String COMPILER_PB_DEAD_CODE = "org.eclipse.jdt.core.compiler.problem.deadCode";
    public static final String COMPILER_PB_DEAD_CODE_IN_TRIVIAL_IF_STATEMENT = "org.eclipse.jdt.core.compiler.problem.deadCodeInTrivialIfStatement";
    public static final String COMPILER_PB_INCOMPLETE_ENUM_SWITCH = "org.eclipse.jdt.core.compiler.problem.incompleteEnumSwitch";
    public static final String COMPILER_PB_INCONSISTENT_NULL_CHECK = "org.eclipse.jdt.core.compiler.problem.inconsistentNullCheck";
    public static final String COMPILER_PB_UNUSED_LABEL = "org.eclipse.jdt.core.compiler.problem.unusedLabel";
    public static final String COMPILER_PB_INVALID_JAVADOC = "org.eclipse.jdt.core.compiler.problem.invalidJavadoc";
    public static final String COMPILER_PB_INVALID_JAVADOC_TAGS = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTags";
    public static final String COMPILER_PB_INVALID_JAVADOC_TAGS__DEPRECATED_REF = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsDeprecatedRef";
    public static final String COMPILER_PB_INVALID_JAVADOC_TAGS__NOT_VISIBLE_REF = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsNotVisibleRef";
    public static final String COMPILER_PB_INVALID_JAVADOC_TAGS_VISIBILITY = "org.eclipse.jdt.core.compiler.problem.invalidJavadocTagsVisibility";
    public static final String COMPILER_PB_MISSING_JAVADOC_TAG_DESCRIPTION = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagDescription";
    public static final String COMPILER_PB_MISSING_JAVADOC_TAGS = "org.eclipse.jdt.core.compiler.problem.missingJavadocTags";
    public static final String COMPILER_PB_MISSING_JAVADOC_TAGS_VISIBILITY = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsVisibility";
    public static final String COMPILER_PB_MISSING_JAVADOC_TAGS_OVERRIDING = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsOverriding";
    public static final String COMPILER_PB_MISSING_JAVADOC_TAGS_METHOD_TYPE_PARAMETERS = "org.eclipse.jdt.core.compiler.problem.missingJavadocTagsMethodTypeParameters";
    public static final String COMPILER_PB_MISSING_JAVADOC_COMMENTS = "org.eclipse.jdt.core.compiler.problem.missingJavadocComments";
    public static final String COMPILER_PB_MISSING_JAVADOC_COMMENTS_VISIBILITY = "org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsVisibility";
    public static final String COMPILER_PB_MISSING_JAVADOC_COMMENTS_OVERRIDING = "org.eclipse.jdt.core.compiler.problem.missingJavadocCommentsOverriding";
    public static final String COMPILER_PB_CHAR_ARRAY_IN_STRING_CONCATENATION = "org.eclipse.jdt.core.compiler.problem.noImplicitStringConversion";
    public static final String COMPILER_PB_MAX_PER_UNIT = "org.eclipse.jdt.core.compiler.maxProblemPerUnit";
    public static final String COMPILER_PB_FATAL_OPTIONAL_ERROR = "org.eclipse.jdt.core.compiler.problem.fatalOptionalError";
    public static final String COMPILER_PB_PARAMETER_ASSIGNMENT = "org.eclipse.jdt.core.compiler.problem.parameterAssignment";
    public static final String COMPILER_PB_MISSING_STATIC_ON_METHOD = "org.eclipse.jdt.core.compiler.problem.reportMethodCanBeStatic";
    public static final String COMPILER_PB_POTENTIALLY_MISSING_STATIC_ON_METHOD = "org.eclipse.jdt.core.compiler.problem.reportMethodCanBePotentiallyStatic";
    public static final String COMPILER_SOURCE = "org.eclipse.jdt.core.compiler.source";
    public static final String COMPILER_COMPLIANCE = "org.eclipse.jdt.core.compiler.compliance";
    public static final String COMPILER_TASK_PRIORITIES = "org.eclipse.jdt.core.compiler.taskPriorities";
    public static final String COMPILER_TASK_TAGS = "org.eclipse.jdt.core.compiler.taskTags";
    public static final String COMPILER_TASK_CASE_SENSITIVE = "org.eclipse.jdt.core.compiler.taskCaseSensitive";
    public static final String COMPILER_PB_FORBIDDEN_REFERENCE = "org.eclipse.jdt.core.compiler.problem.forbiddenReference";
    public static final String COMPILER_PB_DISCOURAGED_REFERENCE = "org.eclipse.jdt.core.compiler.problem.discouragedReference";
    public static final String COMPILER_PB_SUPPRESS_WARNINGS = "org.eclipse.jdt.core.compiler.problem.suppressWarnings";
    public static final String COMPILER_PB_INCLUDE_ASSERTS_IN_NULL_ANALYSIS = "org.eclipse.jdt.core.compiler.problem.includeNullInfoFromAsserts";
    public static final String COMPILER_PB_SUPPRESS_OPTIONAL_ERRORS = "org.eclipse.jdt.core.compiler.problem.suppressOptionalErrors";
    public static final String COMPILER_PB_UNHANDLED_WARNING_TOKEN = "org.eclipse.jdt.core.compiler.problem.unhandledWarningToken";
    public static final String COMPILER_PB_UNUSED_WARNING_TOKEN = "org.eclipse.jdt.core.compiler.problem.unusedWarningToken";
    public static final String COMPILER_PB_NULL_REFERENCE = "org.eclipse.jdt.core.compiler.problem.nullReference";
    public static final String COMPILER_PB_POTENTIAL_NULL_REFERENCE = "org.eclipse.jdt.core.compiler.problem.potentialNullReference";
    public static final String COMPILER_PB_REDUNDANT_NULL_CHECK = "org.eclipse.jdt.core.compiler.problem.redundantNullCheck";
    public static final String COMPILER_PB_OVERRIDING_METHOD_WITHOUT_SUPER_INVOCATION = "org.eclipse.jdt.core.compiler.problem.overridingMethodWithoutSuperInvocation";
    public static final String COMPILER_PB_REDUNDANT_SUPERINTERFACE = "org.eclipse.jdt.core.compiler.problem.redundantSuperinterface";
    public static final String COMPILER_PB_COMPARING_IDENTICAL = "org.eclipse.jdt.core.compiler.problem.comparingIdentical";
    public static final String COMPILER_PB_MISSING_SYNCHRONIZED_ON_INHERITED_METHOD = "org.eclipse.jdt.core.compiler.problem.missingSynchronizedOnInheritedMethod";
    public static final String COMPILER_PB_UNUSED_OBJECT_ALLOCATION = "org.eclipse.jdt.core.compiler.problem.unusedObjectAllocation";
    public static final String COMPILER_PB_REDUNDANT_TYPE_ARGUMENTS = "org.eclipse.jdt.core.compiler.problem.redundantSpecificationOfTypeArguments";
    public static final String CORE_JAVA_BUILD_ORDER = "org.eclipse.jdt.core.computeJavaBuildOrder";
    public static final String CORE_JAVA_BUILD_RESOURCE_COPY_FILTER = "org.eclipse.jdt.core.builder.resourceCopyExclusionFilter";
    public static final String CORE_JAVA_BUILD_DUPLICATE_RESOURCE = "org.eclipse.jdt.core.builder.duplicateResourceTask";
    public static final String CORE_JAVA_BUILD_CLEAN_OUTPUT_FOLDER = "org.eclipse.jdt.core.builder.cleanOutputFolder";
    public static final String CORE_JAVA_BUILD_RECREATE_MODIFIED_CLASS_FILES_IN_OUTPUT_FOLDER = "org.eclipse.jdt.core.builder.recreateModifiedClassFileInOutputFolder";
    public static final String CORE_INCOMPLETE_CLASSPATH = "org.eclipse.jdt.core.incompleteClasspath";
    public static final String CORE_CIRCULAR_CLASSPATH = "org.eclipse.jdt.core.circularClasspath";
    public static final String CORE_INCOMPATIBLE_JDK_LEVEL = "org.eclipse.jdt.core.incompatibleJDKLevel";
    public static final String CORE_JAVA_BUILD_INVALID_CLASSPATH = "org.eclipse.jdt.core.builder.invalidClasspath";
    public static final String CORE_ENCODING = "org.eclipse.jdt.core.encoding";
    public static final String CORE_ENABLE_CLASSPATH_EXCLUSION_PATTERNS = "org.eclipse.jdt.core.classpath.exclusionPatterns";
    public static final String CORE_ENABLE_CLASSPATH_MULTIPLE_OUTPUT_LOCATIONS = "org.eclipse.jdt.core.classpath.multipleOutputLocations";
    public static final String TIMEOUT_FOR_PARAMETER_NAME_FROM_ATTACHED_JAVADOC = "org.eclipse.jdt.core.timeoutForParameterNameFromAttachedJavadoc";
    public static final String FORMATTER_NEWLINE_OPENING_BRACE = "org.eclipse.jdt.core.formatter.newline.openingBrace";
    public static final String FORMATTER_NEWLINE_CONTROL = "org.eclipse.jdt.core.formatter.newline.controlStatement";
    public static final String FORMATTER_NEWLINE_ELSE_IF = "org.eclipse.jdt.core.formatter.newline.elseIf";
    public static final String FORMATTER_NEWLINE_EMPTY_BLOCK = "org.eclipse.jdt.core.formatter.newline.emptyBlock";
    public static final String FORMATTER_CLEAR_BLANK_LINES = "org.eclipse.jdt.core.formatter.newline.clearAll";
    public static final String FORMATTER_LINE_SPLIT = "org.eclipse.jdt.core.formatter.lineSplit";
    public static final String FORMATTER_COMPACT_ASSIGNMENT = "org.eclipse.jdt.core.formatter.style.assignment";
    public static final String FORMATTER_TAB_CHAR = "org.eclipse.jdt.core.formatter.tabulation.char";
    public static final String FORMATTER_TAB_SIZE = "org.eclipse.jdt.core.formatter.tabulation.size";
    public static final String FORMATTER_SPACE_CASTEXPRESSION = "org.eclipse.jdt.core.formatter.space.castexpression";
    public static final String CODEASSIST_VISIBILITY_CHECK = "org.eclipse.jdt.core.codeComplete.visibilityCheck";
    public static final String CODEASSIST_DEPRECATION_CHECK = "org.eclipse.jdt.core.codeComplete.deprecationCheck";
    public static final String CODEASSIST_CAMEL_CASE_MATCH = "org.eclipse.jdt.core.codeComplete.camelCaseMatch";
    public static final String CODEASSIST_IMPLICIT_QUALIFICATION = "org.eclipse.jdt.core.codeComplete.forceImplicitQualification";
    public static final String CODEASSIST_FIELD_PREFIXES = "org.eclipse.jdt.core.codeComplete.fieldPrefixes";
    public static final String CODEASSIST_STATIC_FIELD_PREFIXES = "org.eclipse.jdt.core.codeComplete.staticFieldPrefixes";
    public static final String CODEASSIST_STATIC_FINAL_FIELD_PREFIXES = "org.eclipse.jdt.core.codeComplete.staticFinalFieldPrefixes";
    public static final String CODEASSIST_LOCAL_PREFIXES = "org.eclipse.jdt.core.codeComplete.localPrefixes";
    public static final String CODEASSIST_ARGUMENT_PREFIXES = "org.eclipse.jdt.core.codeComplete.argumentPrefixes";
    public static final String CODEASSIST_FIELD_SUFFIXES = "org.eclipse.jdt.core.codeComplete.fieldSuffixes";
    public static final String CODEASSIST_STATIC_FIELD_SUFFIXES = "org.eclipse.jdt.core.codeComplete.staticFieldSuffixes";
    public static final String CODEASSIST_STATIC_FINAL_FIELD_SUFFIXES = "org.eclipse.jdt.core.codeComplete.staticFinalFieldSuffixes";
    public static final String CODEASSIST_LOCAL_SUFFIXES = "org.eclipse.jdt.core.codeComplete.localSuffixes";
    public static final String CODEASSIST_ARGUMENT_SUFFIXES = "org.eclipse.jdt.core.codeComplete.argumentSuffixes";
    public static final String CODEASSIST_FORBIDDEN_REFERENCE_CHECK = "org.eclipse.jdt.core.codeComplete.forbiddenReferenceCheck";
    public static final String CODEASSIST_DISCOURAGED_REFERENCE_CHECK = "org.eclipse.jdt.core.codeComplete.discouragedReferenceCheck";
    public static final String CODEASSIST_SUGGEST_STATIC_IMPORTS = "org.eclipse.jdt.core.codeComplete.suggestStaticImports";
    public static final String DEFAULT_TASK_TAG = "TODO";
    public static final String DEFAULT_TASK_PRIORITY = "NORMAL";
    public static final String DEFAULT_TASK_TAGS = "TODO,FIXME,XXX";
    public static final String DEFAULT_TASK_PRIORITIES = "NORMAL,HIGH,NORMAL";
    public static final String GENERATE = "generate";
    public static final String DO_NOT_GENERATE = "do not generate";
    public static final String PRESERVE = "preserve";
    public static final String OPTIMIZE_OUT = "optimize out";
    public static final String COMPILER_TASK_PRIORITY_HIGH = "HIGH";
    public static final String COMPILER_TASK_PRIORITY_LOW = "LOW";
    public static final String COMPILER_TASK_PRIORITY_NORMAL = "NORMAL";
    public static final String VERSION_1_1 = "1.1";
    public static final String VERSION_1_2 = "1.2";
    public static final String VERSION_1_3 = "1.3";
    public static final String VERSION_1_4 = "1.4";
    public static final String VERSION_1_5 = "1.5";
    public static final String VERSION_1_6 = "1.6";
    public static final String VERSION_1_7 = "1.7";
    public static final String VERSION_CLDC_1_1 = "cldc1.1";
    public static final String ABORT = "abort";
    public static final String ERROR = "error";
    public static final String WARNING = "warning";
    public static final String IGNORE = "ignore";
    public static final String COMPUTE = "compute";
    public static final String INSERT = "insert";
    public static final String DO_NOT_INSERT = "do not insert";
    public static final String PRESERVE_ONE = "preserve one";
    public static final String CLEAR_ALL = "clear all";
    public static final String NORMAL = "normal";
    public static final String COMPACT = "compact";
    public static final String TAB = "tab";
    public static final String SPACE = "space";
    public static final String ENABLED = "enabled";
    public static final String DISABLED = "disabled";
    public static final String CLEAN = "clean";
    public static final String PUBLIC = "public";
    public static final String PROTECTED = "protected";
    public static final String DEFAULT = "default";
    public static final String PRIVATE = "private";
    public static final String NEVER = "never";
    public static final String COMPILER_PB_MISSING_JAVADOC_TAG_DESCRIPTION_NO_TAG = "no_tag";
    public static final String COMPILER_PB_MISSING_JAVADOC_TAG_DESCRIPTION_RETURN_TAG = "return_tag";
    public static final String COMPILER_PB_MISSING_JAVADOC_TAG_DESCRIPTION_ALL_STANDARD_TAGS = "all_standard_tags";
    public static final String JAVA_SOURCE_CONTENT_TYPE = "org.eclipse.jdt.core.javaSource";

    public JavaCore() {
        JAVA_CORE_PLUGIN = this;
    }

    public static void addElementChangedListener(IElementChangedListener listener) {
        JavaCore.addElementChangedListener(listener, 5);
    }

    public static void addElementChangedListener(IElementChangedListener listener, int eventMask) {
        JavaModelManager.getDeltaState().addElementChangedListener(listener, eventMask);
    }

    public static void addJavaElementMarkerAttributes(Map attributes, IJavaElement element) {
        if (element instanceof IMember) {
            element = ((IMember)element).getClassFile();
        }
        if (attributes != null && element != null) {
            attributes.put(ATT_HANDLE_ID, element.getHandleIdentifier());
        }
    }

    private static void addNonJavaResources(Object[] nonJavaResources, IContainer container, int rootPathSegmentCounts, ArrayList collector) {
        int i = 0;
        int max = nonJavaResources.length;
        while (i < max) {
            Object nonJavaResource = nonJavaResources[i];
            if (nonJavaResource instanceof IFile) {
                IFile file = (IFile)nonJavaResource;
                IPath path = file.getFullPath().removeFirstSegments(rootPathSegmentCounts);
                IResource member = container.findMember(path);
                if (member != null && member.exists()) {
                    collector.add(member);
                }
            } else if (nonJavaResource instanceof IFolder) {
                IFolder folder = (IFolder)nonJavaResource;
                Object[] members = null;
                try {
                    members = folder.members();
                }
                catch (CoreException coreException) {}
                if (members != null) {
                    JavaCore.addNonJavaResources(members, container, rootPathSegmentCounts, collector);
                }
            }
            ++i;
        }
    }

    public static void addPreProcessingResourceChangedListener(IResourceChangeListener listener) {
        JavaCore.addPreProcessingResourceChangedListener(listener, 1);
    }

    public static void addPreProcessingResourceChangedListener(IResourceChangeListener listener, int eventMask) {
        JavaModelManager.getDeltaState().addPreResourceChangedListener(listener, eventMask);
    }

    public void configureJavaElementMarker(IMarker marker, IJavaElement element) throws CoreException {
        if (element instanceof IMember) {
            element = ((IMember)element).getClassFile();
        }
        if (marker != null && element != null) {
            marker.setAttribute(ATT_HANDLE_ID, (Object)element.getHandleIdentifier());
        }
    }

    public static IJavaElement create(String handleIdentifier) {
        return JavaCore.create(handleIdentifier, DefaultWorkingCopyOwner.PRIMARY);
    }

    public static IJavaElement create(String handleIdentifier, WorkingCopyOwner owner) {
        if (handleIdentifier == null) {
            return null;
        }
        if (owner == null) {
            owner = DefaultWorkingCopyOwner.PRIMARY;
        }
        MementoTokenizer memento = new MementoTokenizer(handleIdentifier);
        JavaModel model = JavaModelManager.getJavaModelManager().getJavaModel();
        return model.getHandleFromMemento(memento, owner);
    }

    public static IJavaElement create(IFile file) {
        return JavaModelManager.create(file, null);
    }

    public static IJavaElement create(IFolder folder) {
        return JavaModelManager.create(folder, null);
    }

    public static IJavaProject create(IProject project) {
        if (project == null) {
            return null;
        }
        JavaModel javaModel = JavaModelManager.getJavaModelManager().getJavaModel();
        return javaModel.getJavaProject((IResource)project);
    }

    public static IJavaElement create(IResource resource) {
        return JavaModelManager.create(resource, null);
    }

    public static IJavaElement create(IResource resource, IJavaProject project) {
        return JavaModelManager.create(resource, project);
    }

    public static IJavaModel create(IWorkspaceRoot root) {
        if (root == null) {
            return null;
        }
        return JavaModelManager.getJavaModelManager().getJavaModel();
    }

    public static IClassFile createClassFileFrom(IFile file) {
        return JavaModelManager.createClassFileFrom(file, null);
    }

    public static ICompilationUnit createCompilationUnitFrom(IFile file) {
        return JavaModelManager.createCompilationUnitFrom(file, null);
    }

    public static IPackageFragmentRoot createJarPackageFragmentRootFrom(IFile file) {
        return JavaModelManager.createJarPackageFragmentRootFrom(file, null);
    }

    public static IClasspathContainer getClasspathContainer(IPath containerPath, IJavaProject project) throws JavaModelException {
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        IClasspathContainer container = manager.getClasspathContainer(containerPath, project);
        if (container == JavaModelManager.CONTAINER_INITIALIZATION_IN_PROGRESS) {
            return manager.getPreviousSessionContainer(containerPath, project);
        }
        return container;
    }

    public static ClasspathContainerInitializer getClasspathContainerInitializer(String containerID) {
        Hashtable containerInitializersCache = JavaModelManager.getJavaModelManager().containerInitializersCache;
        ClasspathContainerInitializer initializer = (ClasspathContainerInitializer)containerInitializersCache.get(containerID);
        if (initializer == null) {
            initializer = JavaCore.computeClasspathContainerInitializer(containerID);
            if (initializer == null) {
                return null;
            }
            containerInitializersCache.put(containerID, initializer);
        }
        return initializer;
    }

    private static ClasspathContainerInitializer computeClasspathContainerInitializer(String containerID) {
        Plugin jdtCorePlugin = JavaCore.getPlugin();
        if (jdtCorePlugin == null) {
            return null;
        }
        IExtensionPoint extension = Platform.getExtensionRegistry().getExtensionPoint(PLUGIN_ID, "classpathContainerInitializer");
        if (extension != null) {
            IExtension[] extensions = extension.getExtensions();
            int i = 0;
            while (i < extensions.length) {
                IConfigurationElement[] configElements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < configElements.length) {
                    block9: {
                        IConfigurationElement configurationElement = configElements[j];
                        String initializerID = configurationElement.getAttribute("id");
                        if (initializerID != null && initializerID.equals(containerID)) {
                            if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED) {
                                JavaCore.verbose_found_container_initializer(containerID, configurationElement);
                            }
                            try {
                                Object execExt = configurationElement.createExecutableExtension("class");
                                if (execExt instanceof ClasspathContainerInitializer) {
                                    return (ClasspathContainerInitializer)execExt;
                                }
                            }
                            catch (CoreException e) {
                                if (!JavaModelManager.CP_RESOLVE_VERBOSE && !JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) break block9;
                                JavaCore.verbose_failed_to_instanciate_container_initializer(containerID, configurationElement);
                                e.printStackTrace();
                            }
                        }
                    }
                    ++j;
                }
                ++i;
            }
        }
        return null;
    }

    private static void verbose_failed_to_instanciate_container_initializer(String containerID, IConfigurationElement configurationElement) {
        Util.verbose("CPContainer INIT - failed to instanciate initializer\n\tcontainer ID: " + containerID + '\n' + "\tclass: " + configurationElement.getAttribute("class"), System.err);
    }

    private static void verbose_found_container_initializer(String containerID, IConfigurationElement configurationElement) {
        Util.verbose("CPContainer INIT - found initializer\n\tcontainer ID: " + containerID + '\n' + "\tclass: " + configurationElement.getAttribute("class"));
    }

    public static IPath getClasspathVariable(String variableName) {
        IPath variablePath;
        block19: {
            JavaModelManager manager = JavaModelManager.getJavaModelManager();
            variablePath = manager.variableGet(variableName);
            if (variablePath == JavaModelManager.VARIABLE_INITIALIZATION_IN_PROGRESS) {
                return manager.getPreviousSessionVariable(variableName);
            }
            if (variablePath != null) {
                if (variablePath == JavaModelManager.CP_ENTRY_IGNORE_PATH) {
                    return null;
                }
                return variablePath;
            }
            ClasspathVariableInitializer initializer = JavaCore.getClasspathVariableInitializer(variableName);
            if (initializer != null) {
                if (JavaModelManager.CP_RESOLVE_VERBOSE) {
                    JavaCore.verbose_triggering_variable_initialization(variableName, initializer);
                }
                if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED) {
                    JavaCore.verbose_triggering_variable_initialization_invocation_trace();
                }
                manager.variablePut(variableName, JavaModelManager.VARIABLE_INITIALIZATION_IN_PROGRESS);
                boolean ok = false;
                try {
                    initializer.initialize(variableName);
                    variablePath = manager.variableGet(variableName);
                    if (variablePath == JavaModelManager.VARIABLE_INITIALIZATION_IN_PROGRESS) {
                        return null;
                    }
                    try {
                        if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED) {
                            JavaCore.verbose_variable_value_after_initialization(variableName, variablePath);
                        }
                        manager.variablesWithInitializer.add(variableName);
                        ok = true;
                        break block19;
                    }
                    catch (RuntimeException e) {
                        if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                            e.printStackTrace();
                        }
                        throw e;
                    }
                    catch (Error e) {
                        if (JavaModelManager.CP_RESOLVE_VERBOSE || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                            e.printStackTrace();
                        }
                        throw e;
                    }
                }
                finally {
                    if (!ok) {
                        JavaModelManager.getJavaModelManager().variablePut(variableName, null);
                    }
                }
            }
            if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED || JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) {
                JavaCore.verbose_no_variable_initializer_found(variableName);
            }
        }
        return variablePath;
    }

    private static void verbose_no_variable_initializer_found(String variableName) {
        Util.verbose("CPVariable INIT - no initializer found\n\tvariable: " + variableName);
    }

    private static void verbose_variable_value_after_initialization(String variableName, IPath variablePath) {
        Util.verbose("CPVariable INIT - after initialization\n\tvariable: " + variableName + '\n' + "\tvariable path: " + variablePath);
    }

    private static void verbose_triggering_variable_initialization(String variableName, ClasspathVariableInitializer initializer) {
        Util.verbose("CPVariable INIT - triggering initialization\n\tvariable: " + variableName + '\n' + "\tinitializer: " + initializer);
    }

    private static void verbose_triggering_variable_initialization_invocation_trace() {
        Util.verbose("CPVariable INIT - triggering initialization\n\tinvocation trace:");
        new Exception("<Fake exception>").printStackTrace(System.out);
    }

    public static String getClasspathVariableDeprecationMessage(String variableName) {
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        String message = (String)manager.deprecatedVariables.get(variableName);
        if (message != null) {
            return message;
        }
        IPath variablePath = manager.variableGet(variableName);
        if (variablePath != null && variablePath != JavaModelManager.VARIABLE_INITIALIZATION_IN_PROGRESS) {
            return null;
        }
        Plugin jdtCorePlugin = JavaCore.getPlugin();
        if (jdtCorePlugin == null) {
            return null;
        }
        IExtensionPoint extension = Platform.getExtensionRegistry().getExtensionPoint(PLUGIN_ID, "classpathVariableInitializer");
        if (extension != null) {
            IExtension[] extensions = extension.getExtensions();
            int i = 0;
            while (i < extensions.length) {
                IConfigurationElement[] configElements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < configElements.length) {
                    String deprecatedAttribute;
                    IConfigurationElement configElement = configElements[j];
                    String varAttribute = configElement.getAttribute("variable");
                    if (variableName.equals(varAttribute) && (deprecatedAttribute = configElement.getAttribute("deprecated")) != null) {
                        return deprecatedAttribute;
                    }
                    ++j;
                }
                ++i;
            }
        }
        return null;
    }

    public static ClasspathVariableInitializer getClasspathVariableInitializer(String variable) {
        Plugin jdtCorePlugin = JavaCore.getPlugin();
        if (jdtCorePlugin == null) {
            return null;
        }
        IExtensionPoint extension = Platform.getExtensionRegistry().getExtensionPoint(PLUGIN_ID, "classpathVariableInitializer");
        if (extension != null) {
            IExtension[] extensions = extension.getExtensions();
            int i = 0;
            while (i < extensions.length) {
                IConfigurationElement[] configElements = extensions[i].getConfigurationElements();
                int j = 0;
                while (j < configElements.length) {
                    block11: {
                        IConfigurationElement configElement = configElements[j];
                        try {
                            String varAttribute = configElement.getAttribute("variable");
                            if (variable.equals(varAttribute)) {
                                Object execExt;
                                if (JavaModelManager.CP_RESOLVE_VERBOSE_ADVANCED) {
                                    JavaCore.verbose_found_variable_initializer(variable, configElement);
                                }
                                if ((execExt = configElement.createExecutableExtension("class")) instanceof ClasspathVariableInitializer) {
                                    String readOnlyAttribute;
                                    ClasspathVariableInitializer initializer = (ClasspathVariableInitializer)execExt;
                                    String deprecatedAttribute = configElement.getAttribute("deprecated");
                                    if (deprecatedAttribute != null) {
                                        JavaModelManager.getJavaModelManager().deprecatedVariables.put(variable, deprecatedAttribute);
                                    }
                                    if ("true".equals(readOnlyAttribute = configElement.getAttribute("readOnly"))) {
                                        JavaModelManager.getJavaModelManager().readOnlyVariables.add(variable);
                                    }
                                    return initializer;
                                }
                            }
                        }
                        catch (CoreException e) {
                            if (!JavaModelManager.CP_RESOLVE_VERBOSE && !JavaModelManager.CP_RESOLVE_VERBOSE_FAILURE) break block11;
                            JavaCore.verbose_failed_to_instanciate_variable_initializer(variable, configElement);
                            e.printStackTrace();
                        }
                    }
                    ++j;
                }
                ++i;
            }
        }
        return null;
    }

    private static void verbose_failed_to_instanciate_variable_initializer(String variable, IConfigurationElement configElement) {
        Util.verbose("CPContainer INIT - failed to instanciate initializer\n\tvariable: " + variable + '\n' + "\tclass: " + configElement.getAttribute("class"), System.err);
    }

    private static void verbose_found_variable_initializer(String variable, IConfigurationElement configElement) {
        Util.verbose("CPVariable INIT - found initializer\n\tvariable: " + variable + '\n' + "\tclass: " + configElement.getAttribute("class"));
    }

    public static String[] getClasspathVariableNames() {
        return JavaModelManager.getJavaModelManager().variableNames();
    }

    public static Hashtable getDefaultOptions() {
        return JavaModelManager.getJavaModelManager().getDefaultOptions();
    }

    public static String getEncoding() {
        try {
            return ResourcesPlugin.getWorkspace().getRoot().getDefaultCharset();
        }
        catch (IllegalStateException illegalStateException) {
            return System.getProperty("file.encoding");
        }
        catch (CoreException coreException) {
            return ResourcesPlugin.getEncoding();
        }
    }

    public static IResource[] getGeneratedResources(IRegion region, boolean includesNonJavaResources) {
        if (region == null) {
            throw new IllegalArgumentException("region cannot be null");
        }
        IJavaElement[] elements = region.getElements();
        HashMap<IProject, State> projectsStates = new HashMap<IProject, State>();
        ArrayList<IResource> collector = new ArrayList<IResource>();
        int i = 0;
        int max = elements.length;
        while (i < max) {
            IJavaElement element = elements[i];
            IJavaProject javaProject = element.getJavaProject();
            IProject project = javaProject.getProject();
            State state = null;
            State currentState = (State)projectsStates.get(project);
            if (currentState != null) {
                state = currentState;
            } else {
                state = (State)JavaModelManager.getJavaModelManager().getLastBuiltState(project, null);
                if (state != null) {
                    projectsStates.put(project, state);
                }
            }
            if (state != null) {
                if (element.getElementType() == 2) {
                    IPackageFragmentRoot[] roots = null;
                    try {
                        roots = javaProject.getPackageFragmentRoots();
                    }
                    catch (JavaModelException javaModelException) {}
                    if (roots != null) {
                        IRegion region2 = JavaCore.newRegion();
                        int j = 0;
                        while (j < roots.length) {
                            region2.add(roots[j]);
                            ++j;
                        }
                        IResource[] res = JavaCore.getGeneratedResources(region2, includesNonJavaResources);
                        int j2 = 0;
                        int max2 = res.length;
                        while (j2 < max2) {
                            collector.add(res[j2]);
                            ++j2;
                        }
                    }
                } else {
                    IPath outputLocation = null;
                    try {
                        outputLocation = javaProject.getOutputLocation();
                    }
                    catch (JavaModelException javaModelException) {}
                    IJavaElement root = element;
                    while (root != null && root.getElementType() != 3) {
                        root = root.getParent();
                    }
                    if (root != null) {
                        IPackageFragmentRoot packageFragmentRoot = (IPackageFragmentRoot)root;
                        int rootPathSegmentCounts = packageFragmentRoot.getPath().segmentCount();
                        try {
                            IClasspathEntry entry = packageFragmentRoot.getRawClasspathEntry();
                            IPath entryOutputLocation = entry.getOutputLocation();
                            if (entryOutputLocation != null) {
                                outputLocation = entryOutputLocation;
                            }
                        }
                        catch (JavaModelException e) {
                            e.printStackTrace();
                        }
                        if (outputLocation != null) {
                            IContainer container = (IContainer)project.getWorkspace().getRoot().findMember(outputLocation);
                            switch (element.getElementType()) {
                                case 5: {
                                    ICompilationUnit unit = (ICompilationUnit)element;
                                    JavaCore.getGeneratedResource(unit, container, state, rootPathSegmentCounts, collector);
                                    break;
                                }
                                case 4: {
                                    IPackageFragment fragment = (IPackageFragment)element;
                                    ICompilationUnit[] compilationUnits = null;
                                    try {
                                        compilationUnits = fragment.getCompilationUnits();
                                    }
                                    catch (JavaModelException javaModelException) {}
                                    if (compilationUnits == null) break;
                                    int j = 0;
                                    int max2 = compilationUnits.length;
                                    while (j < max2) {
                                        JavaCore.getGeneratedResource(compilationUnits[j], container, state, rootPathSegmentCounts, collector);
                                        ++j;
                                    }
                                    if (!includesNonJavaResources) break;
                                    Object[] nonJavaResources = null;
                                    try {
                                        nonJavaResources = fragment.getNonJavaResources();
                                    }
                                    catch (JavaModelException javaModelException) {}
                                    if (nonJavaResources == null) break;
                                    JavaCore.addNonJavaResources(nonJavaResources, container, rootPathSegmentCounts, collector);
                                    break;
                                }
                                case 3: {
                                    IPackageFragment fragment;
                                    IPackageFragmentRoot fragmentRoot = (IPackageFragmentRoot)element;
                                    if (fragmentRoot.isArchive()) break;
                                    IJavaElement[] children = null;
                                    try {
                                        children = fragmentRoot.getChildren();
                                    }
                                    catch (JavaModelException javaModelException) {}
                                    if (children == null) break;
                                    int j = 0;
                                    int max2 = children.length;
                                    while (j < max2) {
                                        fragment = (IPackageFragment)children[j];
                                        ICompilationUnit[] units = null;
                                        try {
                                            units = fragment.getCompilationUnits();
                                        }
                                        catch (JavaModelException javaModelException) {}
                                        if (units != null) {
                                            int n = 0;
                                            int max3 = units.length;
                                            while (n < max3) {
                                                JavaCore.getGeneratedResource(units[n], container, state, rootPathSegmentCounts, collector);
                                                ++n;
                                            }
                                            if (includesNonJavaResources) {
                                                Object[] nonJavaResources = null;
                                                try {
                                                    nonJavaResources = fragment.getNonJavaResources();
                                                }
                                                catch (JavaModelException javaModelException) {}
                                                if (nonJavaResources != null) {
                                                    JavaCore.addNonJavaResources(nonJavaResources, container, rootPathSegmentCounts, collector);
                                                }
                                            }
                                        }
                                        ++j;
                                    }
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            ++i;
        }
        int size = collector.size();
        if (size != 0) {
            IResource[] result = new IResource[size];
            collector.toArray(result);
            return result;
        }
        return NO_GENERATED_RESOURCES;
    }

    private static void getGeneratedResource(ICompilationUnit unit, IContainer container, State state, int rootPathSegmentCounts, ArrayList collector) {
        IResource resource = unit.getResource();
        char[][] typeNames = state.getDefinedTypeNamesFor(resource.getProjectRelativePath().toString());
        if (typeNames != null) {
            IPath path = unit.getPath().removeFirstSegments(rootPathSegmentCounts).removeLastSegments(1);
            int j = 0;
            int max2 = typeNames.length;
            while (j < max2) {
                IPath localPath = path.append(String.valueOf(new String(typeNames[j])) + ".class");
                IResource member = container.findMember(localPath);
                if (member != null && member.exists()) {
                    collector.add(member);
                }
                ++j;
            }
        } else {
            IPath path = unit.getPath().removeFirstSegments(rootPathSegmentCounts).removeLastSegments(1);
            IResource member = container.findMember(path = path.append(String.valueOf(Util.getNameWithoutJavaLikeExtension(unit.getElementName())) + ".class"));
            if (member != null && member.exists()) {
                collector.add(member);
            }
        }
    }

    public static JavaCore getJavaCore() {
        return (JavaCore)JavaCore.getPlugin();
    }

    public static String[] getJavaLikeExtensions() {
        return CharOperation.toStrings(Util.getJavaLikeExtensions());
    }

    public static String getOption(String optionName) {
        return JavaModelManager.getJavaModelManager().getOption(optionName);
    }

    public static String getOptionForConfigurableSeverity(int problemID) {
        return CompilerOptions.optionKeyFromIrritant(ProblemReporter.getIrritant(problemID));
    }

    public static Hashtable getOptions() {
        return JavaModelManager.getJavaModelManager().getOptions();
    }

    public static Plugin getPlugin() {
        return JAVA_CORE_PLUGIN;
    }

    public static IClasspathEntry getResolvedClasspathEntry(IClasspathEntry entry) {
        return JavaModelManager.getJavaModelManager().resolveVariableEntry(entry, false);
    }

    public static IPath getResolvedVariablePath(IPath variablePath) {
        return JavaModelManager.getJavaModelManager().getResolvedVariablePath(variablePath, false);
    }

    public static IWorkingCopy[] getSharedWorkingCopies(IBufferFactory factory) {
        if (factory == null) {
            factory = BufferManager.getDefaultBufferManager().getDefaultBufferFactory();
        }
        return JavaCore.getWorkingCopies(BufferFactoryWrapper.create(factory));
    }

    public static String[] getUserLibraryNames() {
        return JavaModelManager.getUserLibraryManager().getUserLibraryNames();
    }

    public static ICompilationUnit[] getWorkingCopies(WorkingCopyOwner owner) {
        ICompilationUnit[] result;
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        if (owner == null) {
            owner = DefaultWorkingCopyOwner.PRIMARY;
        }
        if ((result = manager.getWorkingCopies(owner, false)) == null) {
            return JavaModelManager.NO_WORKING_COPY;
        }
        return result;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     * Unable to fully structure code
     */
    public static void initializeAfterLoad(IProgressMonitor monitor) throws CoreException {
        try {
            block47: {
                block45: {
                    if (monitor != null) {
                        monitor.beginTask(Messages.javamodel_initialization, 100);
                        monitor.subTask(Messages.javamodel_configuring_classpath_containers);
                    }
                    manager = JavaModelManager.getJavaModelManager();
                    subMonitor = null;
                    try {
                        if (monitor != null) {
                            subMonitor = new SubProgressMonitor(monitor, 50);
                            subMonitor.beginTask("", 100);
                            subMonitor.worked(5);
                            manager.batchContainerInitializationsProgress.initializeAfterLoadMonitor.set(subMonitor);
                        }
                        if (!manager.forceBatchInitializations(true)) ** GOTO lbl30
                        manager.getClasspathContainer((IPath)Path.EMPTY, null);
                        break block45;
lbl-1000:
                        // 1 sources

                        {
                            if (subMonitor != null) {
                                subMonitor.subTask(manager.batchContainerInitializationsProgress.subTaskName);
                                subMonitor.worked(manager.batchContainerInitializationsProgress.getWorked());
                            }
                            var3_3 = manager;
                            synchronized (var3_3) {
                                try {
                                    manager.wait(100L);
                                }
                                catch (InterruptedException v0) {}
                                continue;
                            }
lbl30:
                            // 3 sources

                            ** while (manager.batchContainerInitializations == 2)
                        }
lbl31:
                        // 1 sources

                    }
                    finally {
                        if (subMonitor != null) {
                            subMonitor.done();
                        }
                        manager.batchContainerInitializationsProgress.initializeAfterLoadMonitor.set(null);
                    }
                }
                if (monitor != null) {
                    monitor.subTask(Messages.javamodel_resetting_source_attachment_properties);
                }
                projects = manager.getJavaModel().getJavaProjects();
                visitedPaths = new HashSet<IPath>();
                externalFoldersManager = JavaModelManager.getExternalManager();
                i = 0;
                length = projects.length;
                while (i < length) {
                    block46: {
                        javaProject = (JavaProject)projects[i];
                        try {
                            classpath = javaProject.getResolvedClasspath();
                        }
                        catch (JavaModelException v2) {
                            break block46;
                        }
                        if (classpath != null) {
                            j = 0;
                            length2 = classpath.length;
                            while (j < length2) {
                                entry = classpath[j];
                                if (entry.getSourceAttachmentPath() != null && visitedPaths.add(entryPath = entry.getPath())) {
                                    Util.setSourceAttachmentProperty(entryPath, null);
                                }
                                if (entry.getEntryKind() == 1 && ExternalFoldersManager.isExternalFolderPath(entryPath = entry.getPath()) && externalFoldersManager.getFolder(entryPath) == null) {
                                    externalFoldersManager.addFolder(entryPath, true);
                                }
                                ++j;
                            }
                        }
                    }
                    ++i;
                }
                try {
                    externalFoldersManager.createPendingFolders(monitor);
                }
                catch (JavaModelException jme) {
                    Util.log((Throwable)jme, "Error while processing external folders");
                }
                if (monitor != null) {
                    monitor.subTask(Messages.javamodel_initializing_delta_state);
                }
                manager.deltaState.rootsAreStale = true;
                manager.deltaState.initializeRoots(true);
                if (monitor != null) {
                    monitor.subTask(Messages.javamodel_configuring_searchengine);
                }
                engine = new SearchEngine();
                scope = SearchEngine.createWorkspaceScope();
                try {
                    engine.searchAllTypeNames(null, 0, "!@$#!@".toCharArray(), 10, 5, scope, new TypeNameRequestor(){

                        public void acceptType(int modifiers, char[] packageName, char[] simpleTypeName, char[][] enclosingTypeNames, String path) {
                        }
                    }, 2, (IProgressMonitor)(monitor == null ? null : new SubProgressMonitor(monitor, 49)));
                }
                catch (JavaModelException v3) {
                }
                catch (OperationCanceledException e) {
                    if (monitor == null || !monitor.isCanceled()) break block47;
                    throw e;
                }
            }
            if (monitor != null) {
                monitor.subTask(Messages.javamodel_getting_build_state_number);
            }
            qName = new QualifiedName("org.eclipse.jdt.core", "stateVersionNumber");
            root = ResourcesPlugin.getWorkspace().getRoot();
            versionNumber = null;
            try {
                versionNumber = root.getPersistentProperty(qName);
            }
            catch (CoreException v4) {}
            model = manager.getJavaModel();
            newVersionNumber = Byte.toString((byte)25);
            if (!newVersionNumber.equals(versionNumber)) {
                if (JavaBuilder.DEBUG) {
                    System.out.println("Build state version number has changed");
                }
                runnable = new IWorkspaceRunnable(){

                    public void run(IProgressMonitor progressMonitor2) throws CoreException {
                        int i = 0;
                        int length = projects.length;
                        while (i < length) {
                            IJavaProject project = projects[i];
                            try {
                                if (JavaBuilder.DEBUG) {
                                    System.out.println("Touching " + project.getElementName());
                                }
                                project.getProject().touch(progressMonitor2);
                            }
                            catch (CoreException coreException) {}
                            ++i;
                        }
                    }
                };
                if (monitor != null) {
                    monitor.subTask(Messages.javamodel_building_after_upgrade);
                }
                try {
                    ResourcesPlugin.getWorkspace().run(runnable, monitor);
                }
                catch (CoreException v5) {}
                try {
                    root.setPersistentProperty(qName, newVersionNumber);
                }
                catch (CoreException e) {
                    Util.log(e, "Could not persist build state version number");
                }
            }
            try {
                if (monitor != null) {
                    monitor.subTask(Messages.javamodel_refreshing_external_jars);
                }
                model.refreshExternalArchives(null, (IProgressMonitor)(monitor == null ? null : new SubProgressMonitor(monitor, 1)));
            }
            catch (JavaModelException v6) {}
        }
        finally {
            if (monitor != null) {
                monitor.done();
            }
        }
    }

    public static boolean isClasspathVariableReadOnly(String variableName) {
        return JavaModelManager.getJavaModelManager().readOnlyVariables.contains(variableName);
    }

    public static boolean isJavaLikeFileName(String fileName) {
        return Util.isJavaLikeFileName(fileName);
    }

    public static boolean isReferencedBy(IJavaElement element, IMarker marker) throws CoreException {
        if (element instanceof IMember) {
            IMember member = (IMember)element;
            element = member.isBinary() ? member.getClassFile() : member.getCompilationUnit();
        }
        if (element == null) {
            return false;
        }
        if (marker == null) {
            return false;
        }
        String markerHandleId = (String)marker.getAttribute(ATT_HANDLE_ID);
        if (markerHandleId == null) {
            return false;
        }
        IJavaElement markerElement = JavaCore.create(markerHandleId);
        while (true) {
            IType enclosingType;
            if (element.equals(markerElement)) {
                return true;
            }
            if (!(markerElement instanceof IClassFile) || (enclosingType = ((IClassFile)markerElement).getType().getDeclaringType()) == null) break;
            markerElement = enclosingType.getClassFile();
        }
        return false;
    }

    public static boolean isReferencedBy(IJavaElement element, IMarkerDelta markerDelta) throws CoreException {
        if (element instanceof IMember) {
            IMember member = (IMember)element;
            element = member.isBinary() ? member.getClassFile() : member.getCompilationUnit();
        }
        if (element == null) {
            return false;
        }
        if (markerDelta == null) {
            return false;
        }
        String markerDeltarHandleId = (String)markerDelta.getAttribute(ATT_HANDLE_ID);
        if (markerDeltarHandleId == null) {
            return false;
        }
        IJavaElement markerElement = JavaCore.create(markerDeltarHandleId);
        while (true) {
            IType enclosingType;
            if (element.equals(markerElement)) {
                return true;
            }
            if (!(markerElement instanceof IClassFile) || (enclosingType = ((IClassFile)markerElement).getType().getDeclaringType()) == null) break;
            markerElement = enclosingType.getClassFile();
        }
        return false;
    }

    public static IAccessRule newAccessRule(IPath filePattern, int kind) {
        return new ClasspathAccessRule(filePattern, kind);
    }

    public static IClasspathAttribute newClasspathAttribute(String name, String value) {
        return new ClasspathAttribute(name, value);
    }

    public static IClasspathEntry newContainerEntry(IPath containerPath) {
        return JavaCore.newContainerEntry(containerPath, ClasspathEntry.NO_ACCESS_RULES, ClasspathEntry.NO_EXTRA_ATTRIBUTES, false);
    }

    public static IClasspathEntry newContainerEntry(IPath containerPath, boolean isExported) {
        return JavaCore.newContainerEntry(containerPath, ClasspathEntry.NO_ACCESS_RULES, ClasspathEntry.NO_EXTRA_ATTRIBUTES, isExported);
    }

    public static IClasspathEntry newContainerEntry(IPath containerPath, IAccessRule[] accessRules, IClasspathAttribute[] extraAttributes, boolean isExported) {
        if (containerPath == null) {
            throw new ClasspathEntry.AssertionFailedException("Container path cannot be null");
        }
        if (containerPath.segmentCount() < 1) {
            throw new ClasspathEntry.AssertionFailedException("Illegal classpath container path: '" + containerPath.makeRelative().toString() + "', must have at least one segment (containerID+hints)");
        }
        if (accessRules == null) {
            accessRules = ClasspathEntry.NO_ACCESS_RULES;
        }
        if (extraAttributes == null) {
            extraAttributes = ClasspathEntry.NO_EXTRA_ATTRIBUTES;
        }
        return new ClasspathEntry(1, 5, containerPath, ClasspathEntry.INCLUDE_ALL, ClasspathEntry.EXCLUDE_NONE, null, null, null, isExported, accessRules, true, extraAttributes);
    }

    public static ITypeHierarchy newTypeHierarchy(IRegion region, WorkingCopyOwner owner, IProgressMonitor monitor) throws JavaModelException {
        if (region == null) {
            throw new IllegalArgumentException(Messages.hierarchy_nullRegion);
        }
        ICompilationUnit[] workingCopies = JavaModelManager.getJavaModelManager().getWorkingCopies(owner, true);
        CreateTypeHierarchyOperation op = new CreateTypeHierarchyOperation(region, workingCopies, null, true);
        op.runOperation(monitor);
        return op.getResult();
    }

    public static IClasspathEntry newLibraryEntry(IPath path, IPath sourceAttachmentPath, IPath sourceAttachmentRootPath) {
        return JavaCore.newLibraryEntry(path, sourceAttachmentPath, sourceAttachmentRootPath, ClasspathEntry.NO_ACCESS_RULES, ClasspathEntry.NO_EXTRA_ATTRIBUTES, false);
    }

    public static IClasspathEntry newLibraryEntry(IPath path, IPath sourceAttachmentPath, IPath sourceAttachmentRootPath, boolean isExported) {
        return JavaCore.newLibraryEntry(path, sourceAttachmentPath, sourceAttachmentRootPath, ClasspathEntry.NO_ACCESS_RULES, ClasspathEntry.NO_EXTRA_ATTRIBUTES, isExported);
    }

    public static IClasspathEntry newLibraryEntry(IPath path, IPath sourceAttachmentPath, IPath sourceAttachmentRootPath, IAccessRule[] accessRules, IClasspathAttribute[] extraAttributes, boolean isExported) {
        boolean hasDotDot;
        if (path == null) {
            throw new ClasspathEntry.AssertionFailedException("Library path cannot be null");
        }
        if (accessRules == null) {
            accessRules = ClasspathEntry.NO_ACCESS_RULES;
        }
        if (extraAttributes == null) {
            extraAttributes = ClasspathEntry.NO_EXTRA_ATTRIBUTES;
        }
        if (!(hasDotDot = ClasspathEntry.hasDotDot(path)) && !path.isAbsolute()) {
            throw new ClasspathEntry.AssertionFailedException("Path for IClasspathEntry must be absolute: " + path);
        }
        if (sourceAttachmentPath != null) {
            if (sourceAttachmentPath.isEmpty()) {
                sourceAttachmentPath = null;
            } else if (!sourceAttachmentPath.isAbsolute()) {
                throw new ClasspathEntry.AssertionFailedException("Source attachment path '" + sourceAttachmentPath + "' for IClasspathEntry must be absolute");
            }
        }
        return new ClasspathEntry(2, 1, hasDotDot ? path : JavaProject.canonicalizedPath(path), ClasspathEntry.INCLUDE_ALL, ClasspathEntry.EXCLUDE_NONE, sourceAttachmentPath, sourceAttachmentRootPath, null, isExported, accessRules, false, extraAttributes);
    }

    public static IClasspathEntry newProjectEntry(IPath path) {
        return JavaCore.newProjectEntry(path, false);
    }

    public static IClasspathEntry newProjectEntry(IPath path, boolean isExported) {
        if (!path.isAbsolute()) {
            throw new ClasspathEntry.AssertionFailedException("Path for IClasspathEntry must be absolute");
        }
        return JavaCore.newProjectEntry(path, ClasspathEntry.NO_ACCESS_RULES, true, ClasspathEntry.NO_EXTRA_ATTRIBUTES, isExported);
    }

    public static IClasspathEntry newProjectEntry(IPath path, IAccessRule[] accessRules, boolean combineAccessRules, IClasspathAttribute[] extraAttributes, boolean isExported) {
        if (!path.isAbsolute()) {
            throw new ClasspathEntry.AssertionFailedException("Path for IClasspathEntry must be absolute");
        }
        if (accessRules == null) {
            accessRules = ClasspathEntry.NO_ACCESS_RULES;
        }
        if (extraAttributes == null) {
            extraAttributes = ClasspathEntry.NO_EXTRA_ATTRIBUTES;
        }
        return new ClasspathEntry(1, 2, path, ClasspathEntry.INCLUDE_ALL, ClasspathEntry.EXCLUDE_NONE, null, null, null, isExported, accessRules, combineAccessRules, extraAttributes);
    }

    public static IRegion newRegion() {
        return new Region();
    }

    public static IClasspathEntry newSourceEntry(IPath path) {
        return JavaCore.newSourceEntry(path, ClasspathEntry.INCLUDE_ALL, ClasspathEntry.EXCLUDE_NONE, null);
    }

    public static IClasspathEntry newSourceEntry(IPath path, IPath[] exclusionPatterns) {
        return JavaCore.newSourceEntry(path, ClasspathEntry.INCLUDE_ALL, exclusionPatterns, null);
    }

    public static IClasspathEntry newSourceEntry(IPath path, IPath[] exclusionPatterns, IPath specificOutputLocation) {
        return JavaCore.newSourceEntry(path, ClasspathEntry.INCLUDE_ALL, exclusionPatterns, specificOutputLocation);
    }

    public static IClasspathEntry newSourceEntry(IPath path, IPath[] inclusionPatterns, IPath[] exclusionPatterns, IPath specificOutputLocation) {
        return JavaCore.newSourceEntry(path, inclusionPatterns, exclusionPatterns, specificOutputLocation, ClasspathEntry.NO_EXTRA_ATTRIBUTES);
    }

    public static IClasspathEntry newSourceEntry(IPath path, IPath[] inclusionPatterns, IPath[] exclusionPatterns, IPath specificOutputLocation, IClasspathAttribute[] extraAttributes) {
        if (path == null) {
            throw new ClasspathEntry.AssertionFailedException("Source path cannot be null");
        }
        if (!path.isAbsolute()) {
            throw new ClasspathEntry.AssertionFailedException("Path for IClasspathEntry must be absolute");
        }
        if (exclusionPatterns == null) {
            exclusionPatterns = ClasspathEntry.EXCLUDE_NONE;
        }
        if (inclusionPatterns == null) {
            inclusionPatterns = ClasspathEntry.INCLUDE_ALL;
        }
        if (extraAttributes == null) {
            extraAttributes = ClasspathEntry.NO_EXTRA_ATTRIBUTES;
        }
        return new ClasspathEntry(1, 3, path, inclusionPatterns, exclusionPatterns, null, null, specificOutputLocation, false, null, false, extraAttributes);
    }

    public static IClasspathEntry newVariableEntry(IPath variablePath, IPath variableSourceAttachmentPath, IPath sourceAttachmentRootPath) {
        return JavaCore.newVariableEntry(variablePath, variableSourceAttachmentPath, sourceAttachmentRootPath, false);
    }

    public static IClasspathEntry newVariableEntry(IPath variablePath, IPath variableSourceAttachmentPath, IPath variableSourceAttachmentRootPath, boolean isExported) {
        return JavaCore.newVariableEntry(variablePath, variableSourceAttachmentPath, variableSourceAttachmentRootPath, ClasspathEntry.NO_ACCESS_RULES, ClasspathEntry.NO_EXTRA_ATTRIBUTES, isExported);
    }

    public static IClasspathEntry newVariableEntry(IPath variablePath, IPath variableSourceAttachmentPath, IPath variableSourceAttachmentRootPath, IAccessRule[] accessRules, IClasspathAttribute[] extraAttributes, boolean isExported) {
        if (variablePath == null) {
            throw new ClasspathEntry.AssertionFailedException("Variable path cannot be null");
        }
        if (variablePath.segmentCount() < 1) {
            throw new ClasspathEntry.AssertionFailedException("Illegal classpath variable path: '" + variablePath.makeRelative().toString() + "', must have at least one segment");
        }
        if (accessRules == null) {
            accessRules = ClasspathEntry.NO_ACCESS_RULES;
        }
        if (extraAttributes == null) {
            extraAttributes = ClasspathEntry.NO_EXTRA_ATTRIBUTES;
        }
        return new ClasspathEntry(1, 4, variablePath, ClasspathEntry.INCLUDE_ALL, ClasspathEntry.EXCLUDE_NONE, variableSourceAttachmentPath, variableSourceAttachmentRootPath, null, isExported, accessRules, false, extraAttributes);
    }

    public static IClasspathEntry[] getReferencedClasspathEntries(IClasspathEntry libraryEntry, IJavaProject project) {
        JavaModelManager manager = JavaModelManager.getJavaModelManager();
        return manager.getReferencedClasspathEntries(libraryEntry, project);
    }

    public static void removeClasspathVariable(String variableName) {
        JavaCore.removeClasspathVariable(variableName, null);
    }

    public static void removeClasspathVariable(String variableName, IProgressMonitor monitor) {
        try {
            SetVariablesOperation operation = new SetVariablesOperation(new String[]{variableName}, new IPath[1], true);
            operation.runOperation(monitor);
        }
        catch (JavaModelException e) {
            Util.log((Throwable)((Object)e), "Exception while removing variable " + variableName);
        }
    }

    public static void removeElementChangedListener(IElementChangedListener listener) {
        JavaModelManager.getDeltaState().removeElementChangedListener(listener);
    }

    public static String removeJavaLikeExtension(String fileName) {
        return Util.getNameWithoutJavaLikeExtension(fileName);
    }

    public static void removePreProcessingResourceChangedListener(IResourceChangeListener listener) {
        JavaModelManager.getDeltaState().removePreResourceChangedListener(listener);
    }

    public static void run(IWorkspaceRunnable action, IProgressMonitor monitor) throws CoreException {
        JavaCore.run(action, (ISchedulingRule)ResourcesPlugin.getWorkspace().getRoot(), monitor);
    }

    public static void run(IWorkspaceRunnable action, ISchedulingRule rule, IProgressMonitor monitor) throws CoreException {
        IWorkspace workspace = ResourcesPlugin.getWorkspace();
        if (workspace.isTreeLocked()) {
            new BatchOperation(action).run(monitor);
        } else {
            workspace.run((IWorkspaceRunnable)new BatchOperation(action), rule, 1, monitor);
        }
    }

    public static void setClasspathContainer(IPath containerPath, IJavaProject[] affectedProjects, IClasspathContainer[] respectiveContainers, IProgressMonitor monitor) throws JavaModelException {
        IJavaProject project;
        JavaModelManager manager;
        IClasspathContainer existingCointainer;
        IClasspathContainer container;
        if (affectedProjects.length != respectiveContainers.length) {
            throw new ClasspathEntry.AssertionFailedException("Projects and containers collections should have the same size");
        }
        if (affectedProjects.length == 1 && (container = respectiveContainers[0]) != null && (existingCointainer = (manager = JavaModelManager.getJavaModelManager()).containerGet(project = affectedProjects[0], containerPath)) == JavaModelManager.CONTAINER_INITIALIZATION_IN_PROGRESS) {
            manager.containerBeingInitializedPut(project, containerPath, container);
            return;
        }
        SetContainerOperation operation = new SetContainerOperation(containerPath, affectedProjects, respectiveContainers);
        operation.runOperation(monitor);
    }

    public static void setClasspathVariable(String variableName, IPath path) throws JavaModelException {
        JavaCore.setClasspathVariable(variableName, path, null);
    }

    public static void setClasspathVariable(String variableName, IPath path, IProgressMonitor monitor) throws JavaModelException {
        if (path == null) {
            throw new ClasspathEntry.AssertionFailedException("Variable path cannot be null");
        }
        JavaCore.setClasspathVariables(new String[]{variableName}, new IPath[]{path}, monitor);
    }

    public static void setClasspathVariables(String[] variableNames, IPath[] paths, IProgressMonitor monitor) throws JavaModelException {
        if (variableNames.length != paths.length) {
            throw new ClasspathEntry.AssertionFailedException("Variable names and paths collections should have the same size");
        }
        SetVariablesOperation operation = new SetVariablesOperation(variableNames, paths, true);
        operation.runOperation(monitor);
    }

    public static void setComplianceOptions(String compliance, Map options) {
        switch ((int)(CompilerOptions.versionToJdkLevel(compliance) >>> 16)) {
            case 47: {
                options.put(COMPILER_COMPLIANCE, VERSION_1_3);
                options.put(COMPILER_SOURCE, VERSION_1_3);
                options.put(COMPILER_CODEGEN_TARGET_PLATFORM, VERSION_1_1);
                options.put(COMPILER_PB_ASSERT_IDENTIFIER, IGNORE);
                options.put(COMPILER_PB_ENUM_IDENTIFIER, IGNORE);
                break;
            }
            case 48: {
                options.put(COMPILER_COMPLIANCE, VERSION_1_4);
                options.put(COMPILER_SOURCE, VERSION_1_3);
                options.put(COMPILER_CODEGEN_TARGET_PLATFORM, VERSION_1_2);
                options.put(COMPILER_PB_ASSERT_IDENTIFIER, WARNING);
                options.put(COMPILER_PB_ENUM_IDENTIFIER, WARNING);
                break;
            }
            case 49: {
                options.put(COMPILER_COMPLIANCE, VERSION_1_5);
                options.put(COMPILER_SOURCE, VERSION_1_5);
                options.put(COMPILER_CODEGEN_TARGET_PLATFORM, VERSION_1_5);
                options.put(COMPILER_PB_ASSERT_IDENTIFIER, ERROR);
                options.put(COMPILER_PB_ENUM_IDENTIFIER, ERROR);
                options.put(COMPILER_CODEGEN_INLINE_JSR_BYTECODE, ENABLED);
                break;
            }
            case 50: {
                options.put(COMPILER_COMPLIANCE, VERSION_1_6);
                options.put(COMPILER_SOURCE, VERSION_1_6);
                options.put(COMPILER_CODEGEN_TARGET_PLATFORM, VERSION_1_6);
                options.put(COMPILER_PB_ASSERT_IDENTIFIER, ERROR);
                options.put(COMPILER_PB_ENUM_IDENTIFIER, ERROR);
                options.put(COMPILER_CODEGEN_INLINE_JSR_BYTECODE, ENABLED);
                break;
            }
            case 51: {
                options.put(COMPILER_COMPLIANCE, VERSION_1_7);
                options.put(COMPILER_SOURCE, VERSION_1_7);
                options.put(COMPILER_CODEGEN_TARGET_PLATFORM, VERSION_1_7);
                options.put(COMPILER_PB_ASSERT_IDENTIFIER, ERROR);
                options.put(COMPILER_PB_ENUM_IDENTIFIER, ERROR);
                options.put(COMPILER_CODEGEN_INLINE_JSR_BYTECODE, ENABLED);
            }
        }
    }

    public static void setOptions(Hashtable newOptions) {
        JavaModelManager.getJavaModelManager().setOptions(newOptions);
    }

    public void stop(BundleContext context) throws Exception {
        try {
            JavaModelManager.getJavaModelManager().shutdown();
        }
        finally {
            super.stop(context);
        }
    }

    public void start(BundleContext context) throws Exception {
        super.start(context);
        JavaModelManager.getJavaModelManager().startup();
    }
}

