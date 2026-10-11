/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.compiler.problem;

import java.io.CharConversionException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.AnnotationMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayReference;
import org.eclipse.jdt.internal.compiler.ast.ArrayTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.BinaryExpression;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.BranchStatement;
import org.eclipse.jdt.internal.compiler.ast.CaseStatement;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.CompoundAssignment;
import org.eclipse.jdt.internal.compiler.ast.ConditionalExpression;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.EqualExpression;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.FieldReference;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.InstanceOfExpression;
import org.eclipse.jdt.internal.compiler.ast.LabeledStatement;
import org.eclipse.jdt.internal.compiler.ast.Literal;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Reference;
import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.SwitchStatement;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.ast.UnaryExpression;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticArgumentBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import org.eclipse.jdt.internal.compiler.parser.JavadocTagConstants;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.RecoveryScanner;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.ProblemHandler;
import org.eclipse.jdt.internal.compiler.util.Messages;

public class ProblemReporter
extends ProblemHandler {
    public ReferenceContext referenceContext;
    private Scanner positionScanner;
    private static final byte FIELD_ACCESS = 4;
    private static final byte CONSTRUCTOR_ACCESS = 8;
    private static final byte METHOD_ACCESS = 12;

    public ProblemReporter(IErrorHandlingPolicy policy, CompilerOptions options, IProblemFactory problemFactory) {
        super(policy, options, problemFactory);
    }

    private static int getElaborationId(int leadProblemId, byte elaborationVariant) {
        return leadProblemId << 8 | elaborationVariant;
    }

    public static int getIrritant(int problemID) {
        switch (problemID) {
            case 16777381: {
                return 8;
            }
            case 268435844: {
                return 1024;
            }
            case 67108974: {
                return 1;
            }
            case 67109274: {
                return 2;
            }
            case 67109277: 
            case 67109278: {
                return 16384;
            }
            case 0x1000005: 
            case 33554505: 
            case 67108967: 
            case 67109276: 
            case 0x8000085: {
                return 4;
            }
            case 536870973: {
                return 16;
            }
            case 536870974: {
                return 32;
            }
            case 536871063: {
                return 64;
            }
            case 33554622: 
            case 33554623: 
            case 0x40000C0: 
            case 67109057: {
                return 128;
            }
            case 536871173: 
            case 536871177: {
                return 256;
            }
            case 536871352: {
                return 512;
            }
            case 536871353: {
                return 0x20000010;
            }
            case 570425420: 
            case 603979893: {
                return 2048;
            }
            case 0x21000012: 
            case 570425422: 
            case 603979895: {
                return 0x10000000;
            }
            case 0x200000B2: {
                return 8192;
            }
            case 553648135: 
            case 570425421: 
            case 603979894: 
            case 603979910: {
                return 32768;
            }
            case 536871002: 
            case 536871006: 
            case 536871007: 
            case 570425435: {
                return 65536;
            }
            case 570425436: 
            case 570425437: {
                return 131072;
            }
            case 0x1000021: 
            case 16777787: 
            case 16777792: 
            case 16777793: {
                return 0x20000400;
            }
            case 536871091: {
                return 262144;
            }
            case 536871092: 
            case 553648316: {
                return 524288;
            }
            case 536871372: {
                return 0x8000000;
            }
            case 553648309: 
            case 553648311: {
                return 0x4000000;
            }
            case 536871096: {
                return 0x1000000;
            }
            case 536871097: 
            case 536871098: {
                return 0x800000;
            }
            case 570425423: {
                return 0x400000;
            }
            case 536871101: {
                return 0x20000001;
            }
            case 0x1000212: 
            case 16777747: 
            case 16777748: 
            case 16777752: 
            case 0x1000221: 
            case 16777785: 
            case 16777786: 
            case 67109423: 
            case 67109438: 
            case 67109670: {
                return 0x20000002;
            }
            case 16777788: {
                return 0x20010000;
            }
            case 67109491: 
            case 67109500: {
                return 0x20000800;
            }
            case 536871540: 
            case 536871541: 
            case 536871542: {
                return 0x20002000;
            }
            case 16777753: {
                return 0x20000004;
            }
            case 0x20000060: {
                return 0x20000008;
            }
            case 0x1000133: {
                return 0x20000020;
            }
            case 0x1000118: {
                return 0x20004000;
            }
            case 67109665: 
            case 134218530: {
                return 0x20000040;
            }
            case 536871363: {
                return 0x20000080;
            }
            case 536871364: {
                return 0x20200000;
            }
            case 536871365: 
            case 536871366: 
            case 536871367: 
            case 536871368: 
            case 536871369: 
            case 536871370: {
                return 0x20400000;
            }
            case 0x200002D0: 
            case 536871633: {
                return 0x20000100;
            }
            case 33555193: {
                return 0x20001000;
            }
            case 16777842: {
                return 0x20000200;
            }
            case 0x20000277: {
                return 0x20008000;
            }
            case 536871547: {
                return 0x22000000;
            }
            case 536871111: {
                return 0x20020000;
            }
            case -1610612274: 
            case -1610612273: 
            case -1610612272: 
            case -1610612271: 
            case -1610612270: 
            case -1610612269: 
            case -1610612268: 
            case -1610612267: 
            case -1610612266: 
            case -1610612264: 
            case -1610612263: 
            case -1610612262: 
            case -1610612260: 
            case -1610612258: 
            case -1610612257: 
            case -1610612256: 
            case -1610612255: 
            case -1610612254: 
            case -1610612253: 
            case -1610612252: 
            case -1610612251: 
            case -1610612249: 
            case -1610612248: 
            case -1610612247: 
            case -1610612246: 
            case -1610612245: 
            case -1610612244: 
            case -1610612243: 
            case -1610612242: 
            case -1610612241: 
            case -1610612240: 
            case -1610612239: 
            case -1610612238: 
            case -1610612237: 
            case -1610612236: 
            case -1610612235: 
            case -1610612234: 
            case -1610612233: 
            case -1610612232: 
            case -1610612231: 
            case -1610612230: 
            case -1610612229: 
            case -1610612228: 
            case -1610612227: 
            case -1610612226: 
            case -1610612225: 
            case -1610612224: 
            case -1610612223: 
            case -1610612221: 
            case -1610612220: 
            case -1610612219: 
            case -1610612218: 
            case -1610612217: 
            case -1610611886: 
            case -1610611885: 
            case -1610611884: 
            case -1610611883: 
            case -1610611882: 
            case -1610611881: 
            case -1610611880: 
            case -1610611879: 
            case -1610611878: 
            case -1610611877: {
                return 0x2000000;
            }
            case -1610612265: 
            case -1610612261: 
            case -1610612259: {
                return 0x200000;
            }
            case -1610612250: {
                return 0x100000;
            }
            case 536870971: {
                return 0x20040000;
            }
            case 0x200000C2: {
                return 0x20080000;
            }
            case 67109280: {
                return 0x20100000;
            }
            case 67109443: 
            case 67109524: {
                return 0x21000000;
            }
            case 16777547: {
                return 0x24000000;
            }
            case 536871123: {
                return 0x28000000;
            }
            case 67109281: {
                return 0x30000000;
            }
            case 16777548: {
                return 0x40000001;
            }
            case 536871061: {
                return 0x40000002;
            }
            case 536871362: {
                return 0x40000004;
            }
            case 536871060: {
                return 0x40000008;
            }
            case 603979897: {
                return 0x40000010;
            }
            case 603979898: {
                return 0x40000020;
            }
            case 16778100: {
                return 0x40000040;
            }
        }
        return 0;
    }

    public static int getProblemCategory(int severity, int problemID) {
        if ((severity & 0x80) == 0) {
            int irritant = ProblemReporter.getIrritant(problemID);
            switch (irritant) {
                case 1: 
                case 128: 
                case 512: 
                case 2048: 
                case 0x400000: 
                case 0x8000000: 
                case 0x10000000: 
                case 0x20000004: 
                case 0x20000010: 
                case 0x20000100: 
                case 0x20000200: 
                case 0x20000800: 
                case 0x20002000: 
                case 0x20040000: 
                case 0x40000010: 
                case 0x40000020: {
                    return 80;
                }
                case 8: 
                case 64: 
                case 8192: 
                case 262144: 
                case 524288: 
                case 0x1000000: 
                case 0x20000008: 
                case 0x20000040: 
                case 0x20000080: 
                case 0x20001000: 
                case 0x20080000: 
                case 0x20100000: 
                case 0x20200000: 
                case 0x20400000: 
                case 0x28000000: 
                case 0x30000000: 
                case 0x40000001: 
                case 0x40000002: 
                case 0x40000008: {
                    return 90;
                }
                case 2: 
                case 16384: 
                case 65536: 
                case 131072: 
                case 0x20000400: {
                    return 100;
                }
                case 16: 
                case 32: 
                case 1024: 
                case 32768: 
                case 0x800000: 
                case 0x4000000: 
                case 0x20000001: 
                case 0x20008000: 
                case 0x20020000: 
                case 0x22000000: 
                case 0x24000000: 
                case 0x40000040: {
                    return 120;
                }
                case 4: {
                    return 110;
                }
                case 256: {
                    return 140;
                }
                case 4096: {
                    return 0;
                }
                case 0x100000: 
                case 0x200000: 
                case 0x2000000: 
                case 0x2000004: {
                    return 70;
                }
                case 0x20000002: 
                case 0x20010000: {
                    return 130;
                }
                case 0x20000020: 
                case 0x20004000: {
                    return 150;
                }
            }
        }
        switch (problemID) {
            case 0x1000144: 
            case 536871612: {
                return 10;
            }
        }
        if ((problemID & 0x40000000) != 0) {
            return 20;
        }
        if ((problemID & 0x10000000) != 0) {
            return 30;
        }
        if ((problemID & 0x1000000) != 0) {
            return 40;
        }
        if ((problemID & 0xE000000) != 0) {
            return 50;
        }
        return 60;
    }

    public void abortDueToInternalError(String errorMessage) {
        this.abortDueToInternalError(errorMessage, null);
    }

    public void abortDueToInternalError(String errorMessage, ASTNode location) {
        String[] arguments = new String[]{errorMessage};
        this.handle(0, arguments, arguments, 159, location == null ? 0 : location.sourceStart, location == null ? 0 : location.sourceEnd);
    }

    public void abstractMethodCannotBeOverridden(SourceTypeBinding type, MethodBinding concreteMethod) {
        this.handle(67109275, new String[]{new String(type.sourceName()), new String(CharOperation.concat(concreteMethod.declaringClass.readableName(), concreteMethod.readableName(), '.'))}, new String[]{new String(type.sourceName()), new String(CharOperation.concat(concreteMethod.declaringClass.shortReadableName(), concreteMethod.shortReadableName(), '.'))}, type.sourceStart(), type.sourceEnd());
    }

    public void abstractMethodInAbstractClass(SourceTypeBinding type, AbstractMethodDeclaration methodDecl) {
        if (type.isEnum() && type.isLocalType()) {
            FieldBinding field = type.scope.enclosingMethodScope().initializedField;
            FieldDeclaration decl = field.sourceField();
            String[] arguments = new String[]{new String(decl.name), new String(methodDecl.selector)};
            this.handle(67109629, arguments, arguments, methodDecl.sourceStart, methodDecl.sourceEnd);
        } else {
            String[] arguments = new String[]{new String(type.sourceName()), new String(methodDecl.selector)};
            this.handle(67109227, arguments, arguments, methodDecl.sourceStart, methodDecl.sourceEnd);
        }
    }

    public void abstractMethodInConcreteClass(SourceTypeBinding type) {
        if (type.isEnum() && type.isLocalType()) {
            FieldBinding field = type.scope.enclosingMethodScope().initializedField;
            FieldDeclaration decl = field.sourceField();
            String[] arguments = new String[]{new String(decl.name)};
            this.handle(67109628, arguments, arguments, decl.sourceStart(), decl.sourceEnd());
        } else {
            String[] arguments = new String[]{new String(type.sourceName())};
            this.handle(16777549, arguments, arguments, type.sourceStart(), type.sourceEnd());
        }
    }

    public void abstractMethodMustBeImplemented(SourceTypeBinding type, MethodBinding abstractMethod) {
        if (type.isEnum() && type.isLocalType()) {
            FieldBinding field = type.scope.enclosingMethodScope().initializedField;
            FieldDeclaration decl = field.sourceField();
            this.handle(67109627, new String[]{new String(abstractMethod.selector), this.typesAsString(abstractMethod, false), new String(decl.name)}, new String[]{new String(abstractMethod.selector), this.typesAsString(abstractMethod, true), new String(decl.name)}, decl.sourceStart(), decl.sourceEnd());
        } else {
            this.handle(67109264, new String[]{new String(abstractMethod.selector), this.typesAsString(abstractMethod, false), new String(abstractMethod.declaringClass.readableName()), new String(type.readableName())}, new String[]{new String(abstractMethod.selector), this.typesAsString(abstractMethod, true), new String(abstractMethod.declaringClass.shortReadableName()), new String(type.shortReadableName())}, type.sourceStart(), type.sourceEnd());
        }
    }

    public void abstractMethodMustBeImplemented(SourceTypeBinding type, MethodBinding abstractMethod, MethodBinding concreteMethod) {
        this.handle(67109282, new String[]{new String(abstractMethod.selector), this.typesAsString(abstractMethod, false), new String(abstractMethod.declaringClass.readableName()), new String(type.readableName()), new String(concreteMethod.selector), this.typesAsString(concreteMethod, false), new String(concreteMethod.declaringClass.readableName())}, new String[]{new String(abstractMethod.selector), this.typesAsString(abstractMethod, true), new String(abstractMethod.declaringClass.shortReadableName()), new String(type.shortReadableName()), new String(concreteMethod.selector), this.typesAsString(concreteMethod, true), new String(concreteMethod.declaringClass.shortReadableName())}, type.sourceStart(), type.sourceEnd());
    }

    public void abstractMethodNeedingNoBody(AbstractMethodDeclaration method) {
        this.handle(603979889, NoArgument, NoArgument, method.sourceStart, method.sourceEnd, method, method.compilationResult());
    }

    public void alreadyDefinedLabel(char[] labelName, ASTNode location) {
        String[] arguments = new String[]{new String(labelName)};
        this.handle(536871083, arguments, arguments, location.sourceStart, location.sourceEnd);
    }

    public void annotationCannotOverrideMethod(MethodBinding overrideMethod, MethodBinding inheritedMethod) {
        AbstractMethodDeclaration location = overrideMethod.sourceMethod();
        this.handle(67109480, new String[]{new String(overrideMethod.declaringClass.readableName()), new String(inheritedMethod.declaringClass.readableName()), new String(inheritedMethod.selector), this.typesAsString(inheritedMethod, false)}, new String[]{new String(overrideMethod.declaringClass.shortReadableName()), new String(inheritedMethod.declaringClass.shortReadableName()), new String(inheritedMethod.selector), this.typesAsString(inheritedMethod, true)}, location.sourceStart, location.sourceEnd);
    }

    public void annotationCircularity(TypeBinding sourceType, TypeBinding otherType, TypeReference reference) {
        if (sourceType == otherType) {
            this.handle(16777822, new String[]{new String(sourceType.readableName())}, new String[]{new String(sourceType.shortReadableName())}, reference.sourceStart, reference.sourceEnd);
        } else {
            this.handle(16777823, new String[]{new String(sourceType.readableName()), new String(otherType.readableName())}, new String[]{new String(sourceType.shortReadableName()), new String(otherType.shortReadableName())}, reference.sourceStart, reference.sourceEnd);
        }
    }

    public void annotationMembersCannotHaveParameters(AnnotationMethodDeclaration annotationMethodDeclaration) {
        this.handle(1610613353, NoArgument, NoArgument, annotationMethodDeclaration.sourceStart, annotationMethodDeclaration.sourceEnd);
    }

    public void annotationMembersCannotHaveTypeParameters(AnnotationMethodDeclaration annotationMethodDeclaration) {
        this.handle(1610613354, NoArgument, NoArgument, annotationMethodDeclaration.sourceStart, annotationMethodDeclaration.sourceEnd);
    }

    public void annotationTypeDeclarationCannotHaveConstructor(ConstructorDeclaration constructorDeclaration) {
        this.handle(1610613360, NoArgument, NoArgument, constructorDeclaration.sourceStart, constructorDeclaration.sourceEnd);
    }

    public void annotationTypeDeclarationCannotHaveSuperclass(TypeDeclaration typeDeclaration) {
        this.handle(1610613355, NoArgument, NoArgument, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void annotationTypeDeclarationCannotHaveSuperinterfaces(TypeDeclaration typeDeclaration) {
        this.handle(1610613356, NoArgument, NoArgument, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void annotationTypeUsedAsSuperinterface(SourceTypeBinding type, TypeReference superInterfaceRef, ReferenceBinding superType) {
        this.handle(16777842, new String[]{new String(superType.readableName()), new String(type.sourceName())}, new String[]{new String(superType.shortReadableName()), new String(type.sourceName())}, superInterfaceRef.sourceStart, superInterfaceRef.sourceEnd);
    }

    public void annotationValueMustBeAnnotation(TypeBinding annotationType, char[] name, Expression value, TypeBinding expectedType) {
        String str = new String(name);
        this.handle(536871537, new String[]{new String(annotationType.readableName()), str, new String(expectedType.readableName())}, new String[]{new String(annotationType.shortReadableName()), str, new String(expectedType.readableName())}, value.sourceStart, value.sourceEnd);
    }

    public void annotationValueMustBeArrayInitializer(TypeBinding annotationType, char[] name, Expression value) {
        String str = new String(name);
        this.handle(536871544, new String[]{new String(annotationType.readableName()), str}, new String[]{new String(annotationType.shortReadableName()), str}, value.sourceStart, value.sourceEnd);
    }

    public void annotationValueMustBeClassLiteral(TypeBinding annotationType, char[] name, Expression value) {
        String str = new String(name);
        this.handle(536871524, new String[]{new String(annotationType.readableName()), str}, new String[]{new String(annotationType.shortReadableName()), str}, value.sourceStart, value.sourceEnd);
    }

    public void annotationValueMustBeConstant(TypeBinding annotationType, char[] name, Expression value, boolean isEnum) {
        String str = new String(name);
        if (isEnum) {
            this.handle(536871545, new String[]{new String(annotationType.readableName()), str}, new String[]{new String(annotationType.shortReadableName()), str}, value.sourceStart, value.sourceEnd);
        } else {
            this.handle(536871525, new String[]{new String(annotationType.readableName()), str}, new String[]{new String(annotationType.shortReadableName()), str}, value.sourceStart, value.sourceEnd);
        }
    }

    public void anonymousClassCannotExtendFinalClass(TypeReference reference, TypeBinding type) {
        this.handle(0x100001D, new String[]{new String(type.readableName())}, new String[]{new String(type.shortReadableName())}, reference.sourceStart, reference.sourceEnd);
    }

    public void argumentTypeCannotBeVoid(SourceTypeBinding type, AbstractMethodDeclaration methodDecl, Argument arg) {
        String[] arguments = new String[]{new String(methodDecl.selector), new String(arg.name)};
        this.handle(67109228, arguments, arguments, methodDecl.sourceStart, methodDecl.sourceEnd);
    }

    public void argumentTypeCannotBeVoidArray(Argument arg) {
        this.handle(536870966, NoArgument, NoArgument, arg.type.sourceStart, arg.type.sourceEnd);
    }

    public void arrayConstantsOnlyInArrayInitializers(int sourceStart, int sourceEnd) {
        this.handle(0x600000D0, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void assignmentHasNoEffect(AbstractVariableDeclaration location, char[] name) {
        int severity = this.computeSeverity(0x200000B2);
        if (severity == 256) {
            return;
        }
        String[] arguments = new String[]{new String(name)};
        int start = location.sourceStart;
        int end = location.sourceEnd;
        if (location.initialization != null) {
            end = location.initialization.sourceEnd;
        }
        this.handle(0x200000B2, arguments, arguments, severity, start, end);
    }

    public void assignmentHasNoEffect(Assignment location, char[] name) {
        int severity = this.computeSeverity(0x200000B2);
        if (severity == 256) {
            return;
        }
        String[] arguments = new String[]{new String(name)};
        this.handle(0x200000B2, arguments, arguments, severity, location.sourceStart, location.sourceEnd);
    }

    public void attemptToReturnNonVoidExpression(ReturnStatement returnStatement, TypeBinding expectedType) {
        this.handle(67108969, new String[]{new String(expectedType.readableName())}, new String[]{new String(expectedType.shortReadableName())}, returnStatement.sourceStart, returnStatement.sourceEnd);
    }

    public void attemptToReturnVoidValue(ReturnStatement returnStatement) {
        this.handle(67108970, NoArgument, NoArgument, returnStatement.sourceStart, returnStatement.sourceEnd);
    }

    public void autoboxing(Expression expression, TypeBinding originalType, TypeBinding convertedType) {
        if (this.options.getSeverity(0x20000100) == 256) {
            return;
        }
        this.handle(originalType.isBaseType() ? 0x200002D0 : 536871633, new String[]{new String(originalType.readableName()), new String(convertedType.readableName())}, new String[]{new String(originalType.shortReadableName()), new String(convertedType.shortReadableName())}, expression.sourceStart, expression.sourceEnd);
    }

    public void boundCannotBeArray(ASTNode location, TypeBinding type) {
        this.handle(16777784, new String[]{new String(type.readableName())}, new String[]{new String(type.shortReadableName())}, location.sourceStart, location.sourceEnd);
    }

    public void boundMustBeAnInterface(ASTNode location, TypeBinding type) {
        this.handle(0x1000211, new String[]{new String(type.readableName())}, new String[]{new String(type.shortReadableName())}, location.sourceStart, location.sourceEnd);
    }

    public void bytecodeExceeds64KLimit(AbstractMethodDeclaration location) {
        MethodBinding method = location.binding;
        if (location.isConstructor()) {
            this.handle(536870981, new String[]{new String(location.selector), this.typesAsString(method, false)}, new String[]{new String(location.selector), this.typesAsString(method, true)}, 159, location.sourceStart, location.sourceEnd);
        } else {
            this.handle(536870975, new String[]{new String(location.selector), this.typesAsString(method, false)}, new String[]{new String(location.selector), this.typesAsString(method, true)}, 159, location.sourceStart, location.sourceEnd);
        }
    }

    public void bytecodeExceeds64KLimit(TypeDeclaration location) {
        this.handle(0x20000040, NoArgument, NoArgument, 159, location.sourceStart, location.sourceEnd);
    }

    public void cannotAllocateVoidArray(Expression expression) {
        this.handle(536870966, NoArgument, NoArgument, expression.sourceStart, expression.sourceEnd);
    }

    public void cannotAssignToFinalField(FieldBinding field, ASTNode location) {
        this.handle(0x2000050, new String[]{field.declaringClass == null ? "array" : new String(field.declaringClass.readableName()), new String(field.readableName())}, new String[]{field.declaringClass == null ? "array" : new String(field.declaringClass.shortReadableName()), new String(field.shortReadableName())}, this.nodeSourceStart(field, location), this.nodeSourceEnd(field, location));
    }

    public void cannotAssignToFinalLocal(LocalVariableBinding local, ASTNode location) {
        int problemId = 0;
        problemId = (local.tagBits & 0x1000L) != 0L ? 536871782 : ((local.tagBits & 0x2000L) != 0L ? 536871784 : 536870970);
        String[] arguments = new String[]{new String(local.readableName())};
        this.handle(problemId, arguments, arguments, this.nodeSourceStart(local, location), this.nodeSourceEnd(local, location));
    }

    public void cannotAssignToFinalOuterLocal(LocalVariableBinding local, ASTNode location) {
        String[] arguments = new String[]{new String(local.readableName())};
        this.handle(536870972, arguments, arguments, this.nodeSourceStart(local, location), this.nodeSourceEnd(local, location));
    }

    public void cannotDefineDimensionsAndInitializer(ArrayAllocationExpression expresssion) {
        this.handle(536871070, NoArgument, NoArgument, expresssion.sourceStart, expresssion.sourceEnd);
    }

    public void cannotDireclyInvokeAbstractMethod(MessageSend messageSend, MethodBinding method) {
        this.handle(67108968, new String[]{new String(method.declaringClass.readableName()), new String(method.selector), this.typesAsString(method, false)}, new String[]{new String(method.declaringClass.shortReadableName()), new String(method.selector), this.typesAsString(method, true)}, messageSend.sourceStart, messageSend.sourceEnd);
    }

    public void cannotExtendEnum(SourceTypeBinding type, TypeReference superclass, TypeBinding superTypeBinding) {
        String name = new String(type.sourceName());
        String superTypeFullName = new String(superTypeBinding.readableName());
        String superTypeShortName = new String(superTypeBinding.shortReadableName());
        if (superTypeShortName.equals(name)) {
            superTypeShortName = superTypeFullName;
        }
        this.handle(16777972, new String[]{superTypeFullName, name}, new String[]{superTypeShortName, name}, superclass.sourceStart, superclass.sourceEnd);
    }

    public void cannotImportPackage(ImportReference importRef) {
        String[] arguments = new String[]{CharOperation.toString(importRef.tokens)};
        this.handle(268435843, arguments, arguments, importRef.sourceStart, importRef.sourceEnd);
    }

    public void cannotInstantiate(TypeReference typeRef, TypeBinding type) {
        this.handle(16777373, new String[]{new String(type.readableName())}, new String[]{new String(type.shortReadableName())}, typeRef.sourceStart, typeRef.sourceEnd);
    }

    public void cannotInvokeSuperConstructorInEnum(ExplicitConstructorCall constructorCall, MethodBinding enumConstructor) {
        this.handle(67109621, new String[]{new String(enumConstructor.declaringClass.sourceName()), this.typesAsString(enumConstructor, false)}, new String[]{new String(enumConstructor.declaringClass.sourceName()), this.typesAsString(enumConstructor, true)}, constructorCall.sourceStart, constructorCall.sourceEnd);
    }

    public void cannotReadSource(CompilationUnitDeclaration unit, AbortCompilationUnit abortException, boolean verbose) {
        String fileName = new String(unit.compilationResult.fileName);
        if (abortException.exception instanceof CharConversionException) {
            String encoding = abortException.encoding;
            if (encoding == null) {
                encoding = System.getProperty("file.encoding");
            }
            String[] arguments = new String[]{fileName, encoding};
            this.handle(536871613, arguments, arguments, 0, 0);
            return;
        }
        StringWriter stringWriter = new StringWriter();
        PrintWriter writer = new PrintWriter(stringWriter);
        if (verbose) {
            abortException.exception.printStackTrace(writer);
            System.err.println(stringWriter.toString());
            stringWriter = new StringWriter();
            writer = new PrintWriter(stringWriter);
        }
        writer.print(abortException.exception.getClass().getName());
        writer.print(':');
        writer.print(abortException.exception.getMessage());
        String exceptionTrace = stringWriter.toString();
        String[] arguments = new String[]{fileName, exceptionTrace};
        this.handle(536871614, arguments, arguments, 0, 0);
    }

    public void cannotReferToNonFinalOuterLocal(LocalVariableBinding local, ASTNode location) {
        String[] arguments = new String[]{new String(local.readableName())};
        this.handle(536870937, arguments, arguments, this.nodeSourceStart(local, location), this.nodeSourceEnd(local, location));
    }

    public void cannotReturnInInitializer(ASTNode location) {
        this.handle(0x200000A2, NoArgument, NoArgument, location.sourceStart, location.sourceEnd);
    }

    public void cannotThrowNull(ASTNode expression) {
        this.handle(536871089, NoArgument, NoArgument, expression.sourceStart, expression.sourceEnd);
    }

    public void cannotThrowType(ASTNode exception, TypeBinding expectedType) {
        this.handle(0x1000140, new String[]{new String(expectedType.readableName())}, new String[]{new String(expectedType.shortReadableName())}, exception.sourceStart, exception.sourceEnd);
    }

    public void cannotUseQualifiedEnumConstantInCaseLabel(Reference location, FieldBinding field) {
        this.handle(33555187, new String[]{String.valueOf(field.declaringClass.readableName()), String.valueOf(field.name)}, new String[]{String.valueOf(field.declaringClass.shortReadableName()), String.valueOf(field.name)}, location.sourceStart(), location.sourceEnd());
    }

    public void cannotUseSuperInCodeSnippet(int start, int end) {
        this.handle(536871334, NoArgument, NoArgument, 159, start, end);
    }

    public void cannotUseSuperInJavaLangObject(ASTNode reference) {
        this.handle(0x1000001, NoArgument, NoArgument, reference.sourceStart, reference.sourceEnd);
    }

    public void caseExpressionMustBeConstant(Expression expression) {
        this.handle(0x20000099, NoArgument, NoArgument, expression.sourceStart, expression.sourceEnd);
    }

    public void classExtendFinalClass(SourceTypeBinding type, TypeReference superclass, TypeBinding superTypeBinding) {
        String name = new String(type.sourceName());
        String superTypeFullName = new String(superTypeBinding.readableName());
        String superTypeShortName = new String(superTypeBinding.shortReadableName());
        if (superTypeShortName.equals(name)) {
            superTypeShortName = superTypeFullName;
        }
        this.handle(16777529, new String[]{superTypeFullName, name}, new String[]{superTypeShortName, name}, superclass.sourceStart, superclass.sourceEnd);
    }

    public void codeSnippetMissingClass(String missing, int start, int end) {
        String[] arguments = new String[]{missing};
        this.handle(536871332, arguments, arguments, 159, start, end);
    }

    public void codeSnippetMissingMethod(String className, String missingMethod, String argumentTypes, int start, int end) {
        String[] arguments = new String[]{className, missingMethod, argumentTypes};
        this.handle(536871333, arguments, arguments, 159, start, end);
    }

    public void comparingIdenticalExpressions(Expression comparison) {
        int severity = this.computeSeverity(536871123);
        if (severity == 256) {
            return;
        }
        this.handle(536871123, NoArgument, NoArgument, severity, comparison.sourceStart, comparison.sourceEnd);
    }

    public int computeSeverity(int problemID) {
        switch (problemID) {
            case 67109667: {
                return 0;
            }
            case 16777538: {
                return 0;
            }
            case -1610612270: 
            case -1610612268: 
            case -1610612264: 
            case -1610612263: 
            case -1610612262: 
            case -1610612258: 
            case -1610612256: 
            case -1610612255: 
            case -1610612254: 
            case -1610612248: 
            case -1610612246: 
            case -1610612244: 
            case -1610612242: 
            case -1610612240: 
            case -1610612238: 
            case -1610612236: 
            case -1610612235: 
            case -1610612234: 
            case -1610612233: 
            case -1610612231: 
            case -1610612229: 
            case -1610612228: 
            case -1610612227: 
            case -1610612226: 
            case -1610612225: 
            case -1610612219: 
            case -1610611886: 
            case -1610611885: 
            case -1610611884: 
            case -1610611883: 
            case -1610611882: 
            case -1610611881: 
            case -1610611880: 
            case -1610611879: 
            case -1610611878: 
            case -1610611877: {
                if (this.options.reportInvalidJavadocTags) break;
                return 256;
            }
            case -1610612245: 
            case -1610612241: 
            case -1610612237: 
            case -1610612230: {
                if (this.options.reportInvalidJavadocTags && this.options.reportInvalidJavadocTagsDeprecatedRef) break;
                return 256;
            }
            case -1610612271: 
            case -1610612247: 
            case -1610612243: 
            case -1610612239: 
            case -1610612232: {
                if (this.options.reportInvalidJavadocTags && this.options.reportInvalidJavadocTagsNotVisibleRef) break;
                return 256;
            }
            case -1610612220: {
                if (!"no_tag".equals(this.options.reportMissingJavadocTagDescription)) break;
                return 256;
            }
            case -1610612273: {
                if ("all_standard_tags".equals(this.options.reportMissingJavadocTagDescription)) break;
                return 256;
            }
        }
        int irritant = ProblemReporter.getIrritant(problemID);
        if (irritant != 0) {
            if ((problemID & Integer.MIN_VALUE) != 0 && !this.options.docCommentSupport) {
                return 256;
            }
            return this.options.getSeverity(irritant);
        }
        return 129;
    }

    public void conditionalArgumentsIncompatibleTypes(ConditionalExpression expression, TypeBinding trueType, TypeBinding falseType) {
        this.handle(0x1000010, new String[]{new String(trueType.readableName()), new String(falseType.readableName())}, new String[]{new String(trueType.sourceName()), new String(falseType.sourceName())}, expression.sourceStart, expression.sourceEnd);
    }

    public void conflictingImport(ImportReference importRef) {
        String[] arguments = new String[]{CharOperation.toString(importRef.tokens)};
        this.handle(0x10000181, arguments, arguments, importRef.sourceStart, importRef.sourceEnd);
    }

    public void constantOutOfRange(Literal literal, TypeBinding literalType) {
        String[] arguments = new String[]{new String(literalType.readableName()), new String(literal.source())};
        this.handle(536871066, arguments, arguments, literal.sourceStart, literal.sourceEnd);
    }

    public void corruptedSignature(TypeBinding enclosingType, char[] signature, int position) {
        this.handle(536871612, new String[]{new String(enclosingType.readableName()), new String(signature), String.valueOf(position)}, new String[]{new String(enclosingType.shortReadableName()), new String(signature), String.valueOf(position)}, 159, 0, 0);
    }

    public void deprecatedField(FieldBinding field, ASTNode location) {
        int severity = this.computeSeverity(33554505);
        if (severity == 256) {
            return;
        }
        this.handle(33554505, new String[]{new String(field.declaringClass.readableName()), new String(field.name)}, new String[]{new String(field.declaringClass.shortReadableName()), new String(field.name)}, severity, this.nodeSourceStart(field, location), this.nodeSourceEnd(field, location));
    }

    public void deprecatedMethod(MethodBinding method, ASTNode location) {
        boolean isConstructor = method.isConstructor();
        int severity = this.computeSeverity(isConstructor ? 0x8000085 : 67108967);
        if (severity == 256) {
            return;
        }
        if (isConstructor) {
            int start = -1;
            if (location instanceof AllocationExpression) {
                AllocationExpression allocationExpression = (AllocationExpression)location;
                if (allocationExpression.enumConstant != null) {
                    start = allocationExpression.enumConstant.sourceStart;
                }
                start = allocationExpression.type.sourceStart;
            }
            this.handle(0x8000085, new String[]{new String(method.declaringClass.readableName()), this.typesAsString(method, false)}, new String[]{new String(method.declaringClass.shortReadableName()), this.typesAsString(method, true)}, severity, start == -1 ? location.sourceStart : start, location.sourceEnd);
        } else {
            int start = -1;
            if (location instanceof MessageSend) {
                start = (int)(((MessageSend)location).nameSourcePosition >>> 32);
            }
            this.handle(67108967, new String[]{new String(method.declaringClass.readableName()), new String(method.selector), this.typesAsString(method, false)}, new String[]{new String(method.declaringClass.shortReadableName()), new String(method.selector), this.typesAsString(method, true)}, severity, start == -1 ? location.sourceStart : start, location.sourceEnd);
        }
    }

    public void deprecatedType(TypeBinding type, ASTNode location) {
        this.deprecatedType(type, location, Integer.MAX_VALUE);
    }

    public void deprecatedType(TypeBinding type, ASTNode location, int index) {
        if (location == null) {
            return;
        }
        int severity = this.computeSeverity(0x1000005);
        if (severity == 256) {
            return;
        }
        type = type.leafComponentType();
        int sourceStart = -1;
        if (location instanceof QualifiedTypeReference) {
            QualifiedTypeReference ref = (QualifiedTypeReference)location;
            if (index < Integer.MAX_VALUE) {
                sourceStart = (int)(ref.sourcePositions[index] >> 32);
            }
        }
        this.handle(0x1000005, new String[]{new String(type.readableName())}, new String[]{new String(type.shortReadableName())}, severity, sourceStart == -1 ? location.sourceStart : sourceStart, this.nodeSourceEnd(null, location, index));
    }

    public void disallowedTargetForAnnotation(Annotation annotation) {
        this.handle(16777838, new String[]{new String(annotation.resolvedType.readableName())}, new String[]{new String(annotation.resolvedType.shortReadableName())}, annotation.sourceStart, annotation.sourceEnd);
    }

    public void polymorphicMethodNotBelow17(ASTNode node) {
        this.handle(67109740, NoArgument, NoArgument, node.sourceStart, node.sourceEnd);
    }

    public void multiCatchNotBelow17(ASTNode node) {
        this.handle(1610613611, NoArgument, NoArgument, node.sourceStart, node.sourceEnd);
    }

    public void duplicateAnnotation(Annotation annotation) {
        this.handle(16777824, new String[]{new String(annotation.resolvedType.readableName())}, new String[]{new String(annotation.resolvedType.shortReadableName())}, annotation.sourceStart, annotation.sourceEnd);
    }

    public void duplicateAnnotationValue(TypeBinding annotationType, MemberValuePair memberValuePair) {
        String name = new String(memberValuePair.name);
        this.handle(0x20000262, new String[]{name, new String(annotationType.readableName())}, new String[]{name, new String(annotationType.shortReadableName())}, memberValuePair.sourceStart, memberValuePair.sourceEnd);
    }

    public void duplicateBounds(ASTNode location, TypeBinding type) {
        this.handle(16777783, new String[]{new String(type.readableName())}, new String[]{new String(type.shortReadableName())}, location.sourceStart, location.sourceEnd);
    }

    public void duplicateCase(CaseStatement caseStatement) {
        this.handle(0x20000AA, NoArgument, NoArgument, caseStatement.sourceStart, caseStatement.sourceEnd);
    }

    public void duplicateDefaultCase(ASTNode statement) {
        this.handle(536871078, NoArgument, NoArgument, statement.sourceStart, statement.sourceEnd);
    }

    public void duplicateEnumSpecialMethod(SourceTypeBinding type, AbstractMethodDeclaration methodDecl) {
        MethodBinding method = methodDecl.binding;
        this.handle(67109618, new String[]{new String(methodDecl.selector), new String(method.declaringClass.readableName()), this.typesAsString(method, false)}, new String[]{new String(methodDecl.selector), new String(method.declaringClass.shortReadableName()), this.typesAsString(method, true)}, methodDecl.sourceStart, methodDecl.sourceEnd);
    }

    public void duplicateFieldInType(SourceTypeBinding type, FieldDeclaration fieldDecl) {
        this.handle(33554772, new String[]{new String(type.sourceName()), new String(fieldDecl.name)}, new String[]{new String(type.shortReadableName()), new String(fieldDecl.name)}, fieldDecl.sourceStart, fieldDecl.sourceEnd);
    }

    public void duplicateImport(ImportReference importRef) {
        String[] arguments = new String[]{CharOperation.toString(importRef.tokens)};
        this.handle(268435842, arguments, arguments, importRef.sourceStart, importRef.sourceEnd);
    }

    public void duplicateInheritedMethods(SourceTypeBinding type, MethodBinding inheritedMethod1, MethodBinding inheritedMethod2) {
        if (inheritedMethod1.declaringClass != inheritedMethod2.declaringClass) {
            this.handle(67109447, new String[]{new String(inheritedMethod1.selector), this.typesAsString(inheritedMethod1, inheritedMethod1.original().parameters, false), this.typesAsString(inheritedMethod2, inheritedMethod2.original().parameters, false), new String(inheritedMethod1.declaringClass.readableName()), new String(inheritedMethod2.declaringClass.readableName())}, new String[]{new String(inheritedMethod1.selector), this.typesAsString(inheritedMethod1, inheritedMethod1.original().parameters, true), this.typesAsString(inheritedMethod2, inheritedMethod2.original().parameters, true), new String(inheritedMethod1.declaringClass.shortReadableName()), new String(inheritedMethod2.declaringClass.shortReadableName())}, type.sourceStart(), type.sourceEnd());
            return;
        }
        this.handle(67109429, new String[]{new String(inheritedMethod1.selector), new String(inheritedMethod1.declaringClass.readableName()), this.typesAsString(inheritedMethod1, inheritedMethod1.original().parameters, false), this.typesAsString(inheritedMethod2, inheritedMethod2.original().parameters, false)}, new String[]{new String(inheritedMethod1.selector), new String(inheritedMethod1.declaringClass.shortReadableName()), this.typesAsString(inheritedMethod1, inheritedMethod1.original().parameters, true), this.typesAsString(inheritedMethod2, inheritedMethod2.original().parameters, true)}, type.sourceStart(), type.sourceEnd());
    }

    public void duplicateInitializationOfBlankFinalField(FieldBinding field, Reference reference) {
        String[] arguments = new String[]{new String(field.readableName())};
        this.handle(0x2000052, arguments, arguments, this.nodeSourceStart(field, reference), this.nodeSourceEnd(field, reference));
    }

    public void duplicateInitializationOfFinalLocal(LocalVariableBinding local, ASTNode location) {
        String[] arguments = new String[]{new String(local.readableName())};
        this.handle(536870969, arguments, arguments, this.nodeSourceStart(local, location), this.nodeSourceEnd(local, location));
    }

    public void duplicateMethodInType(SourceTypeBinding type, AbstractMethodDeclaration methodDecl, boolean equalParameters, int severity) {
        MethodBinding method = methodDecl.binding;
        if (equalParameters) {
            this.handle(67109219, new String[]{new String(methodDecl.selector), new String(method.declaringClass.readableName()), this.typesAsString(method, false)}, new String[]{new String(methodDecl.selector), new String(method.declaringClass.shortReadableName()), this.typesAsString(method, true)}, severity, methodDecl.sourceStart, methodDecl.sourceEnd);
        } else {
            int length = method.parameters.length;
            TypeBinding[] erasures = new TypeBinding[length];
            int i = 0;
            while (i < length) {
                erasures[i] = method.parameters[i].erasure();
                ++i;
            }
            this.handle(16777743, new String[]{new String(methodDecl.selector), new String(method.declaringClass.readableName()), this.typesAsString(method, false), this.typesAsString(method, erasures, false)}, new String[]{new String(methodDecl.selector), new String(method.declaringClass.shortReadableName()), this.typesAsString(method, true), this.typesAsString(method, erasures, true)}, severity, methodDecl.sourceStart, methodDecl.sourceEnd);
        }
    }

    public void duplicateModifierForField(ReferenceBinding type, FieldDeclaration fieldDecl) {
        String[] arguments = new String[]{new String(fieldDecl.name)};
        this.handle(33554773, arguments, arguments, fieldDecl.sourceStart, fieldDecl.sourceEnd);
    }

    public void duplicateModifierForMethod(ReferenceBinding type, AbstractMethodDeclaration methodDecl) {
        this.handle(67109221, new String[]{new String(type.sourceName()), new String(methodDecl.selector)}, new String[]{new String(type.shortReadableName()), new String(methodDecl.selector)}, methodDecl.sourceStart, methodDecl.sourceEnd);
    }

    public void duplicateModifierForType(SourceTypeBinding type) {
        String[] arguments = new String[]{new String(type.sourceName())};
        this.handle(16777517, arguments, arguments, type.sourceStart(), type.sourceEnd());
    }

    public void duplicateModifierForVariable(LocalDeclaration localDecl, boolean complainForArgument) {
        String[] arguments = new String[]{new String(localDecl.name)};
        this.handle(complainForArgument ? 67109232 : 67109259, arguments, arguments, localDecl.sourceStart, localDecl.sourceEnd);
    }

    public void duplicateNestedType(TypeDeclaration typeDecl) {
        String[] arguments = new String[]{new String(typeDecl.name)};
        this.handle(16777535, arguments, arguments, typeDecl.sourceStart, typeDecl.sourceEnd);
    }

    public void duplicateSuperinterface(SourceTypeBinding type, TypeReference reference, ReferenceBinding superType) {
        this.handle(16777530, new String[]{new String(superType.readableName()), new String(type.sourceName())}, new String[]{new String(superType.shortReadableName()), new String(type.sourceName())}, reference.sourceStart, reference.sourceEnd);
    }

    public void duplicateTargetInTargetAnnotation(TypeBinding annotationType, NameReference reference) {
        FieldBinding field = reference.fieldBinding();
        String name = new String(field.name);
        this.handle(536871533, new String[]{name, new String(annotationType.readableName())}, new String[]{name, new String(annotationType.shortReadableName())}, this.nodeSourceStart(field, reference), this.nodeSourceEnd(field, reference));
    }

    public void duplicateTypeParameterInType(TypeParameter typeParameter) {
        this.handle(0x20000208, new String[]{new String(typeParameter.name)}, new String[]{new String(typeParameter.name)}, typeParameter.sourceStart, typeParameter.sourceEnd);
    }

    public void duplicateTypes(CompilationUnitDeclaration compUnitDecl, TypeDeclaration typeDecl) {
        String[] arguments = new String[]{new String(compUnitDecl.getFileName()), new String(typeDecl.name)};
        this.referenceContext = typeDecl;
        this.handle(16777539, arguments, arguments, typeDecl.sourceStart, typeDecl.sourceEnd, compUnitDecl.compilationResult);
    }

    public void emptyControlFlowStatement(int sourceStart, int sourceEnd) {
        this.handle(553648316, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void enumAbstractMethodMustBeImplemented(AbstractMethodDeclaration method) {
        MethodBinding abstractMethod = method.binding;
        this.handle(67109622, new String[]{new String(abstractMethod.selector), this.typesAsString(abstractMethod, false), new String(abstractMethod.declaringClass.readableName())}, new String[]{new String(abstractMethod.selector), this.typesAsString(abstractMethod, true), new String(abstractMethod.declaringClass.shortReadableName())}, method.sourceStart(), method.sourceEnd());
    }

    public void enumConstantMustImplementAbstractMethod(AbstractMethodDeclaration method, FieldDeclaration field) {
        MethodBinding abstractMethod = method.binding;
        this.handle(67109627, new String[]{new String(abstractMethod.selector), this.typesAsString(abstractMethod, false), new String(field.name)}, new String[]{new String(abstractMethod.selector), this.typesAsString(abstractMethod, true), new String(field.name)}, field.sourceStart(), field.sourceEnd());
    }

    public void enumConstantsCannotBeSurroundedByParenthesis(Expression expression) {
        this.handle(1610613178, NoArgument, NoArgument, expression.sourceStart, expression.sourceEnd);
    }

    public void enumStaticFieldUsedDuringInitialization(FieldBinding field, ASTNode location) {
        this.handle(33555194, new String[]{new String(field.declaringClass.readableName()), new String(field.name)}, new String[]{new String(field.declaringClass.shortReadableName()), new String(field.name)}, this.nodeSourceStart(field, location), this.nodeSourceEnd(field, location));
    }

    public void enumSwitchCannotTargetField(Reference reference, FieldBinding field) {
        this.handle(33555191, new String[]{String.valueOf(field.declaringClass.readableName()), String.valueOf(field.name)}, new String[]{String.valueOf(field.declaringClass.shortReadableName()), String.valueOf(field.name)}, this.nodeSourceStart(field, reference), this.nodeSourceEnd(field, reference));
    }

    public void errorNoMethodFor(MessageSend messageSend, TypeBinding recType, TypeBinding[] params) {
        StringBuffer buffer = new StringBuffer();
        StringBuffer shortBuffer = new StringBuffer();
        int i = 0;
        int length = params.length;
        while (i < length) {
            if (i != 0) {
                buffer.append(", ");
                shortBuffer.append(", ");
            }
            buffer.append(new String(params[i].readableName()));
            shortBuffer.append(new String(params[i].shortReadableName()));
            ++i;
        }
        int id = recType.isArrayType() ? 0x4000074 : 67108978;
        this.handle(id, new String[]{new String(recType.readableName()), new String(messageSend.selector), buffer.toString()}, new String[]{new String(recType.shortReadableName()), new String(messageSend.selector), shortBuffer.toString()}, messageSend.sourceStart, messageSend.sourceEnd);
    }

    public void errorThisSuperInStatic(ASTNode reference) {
        String[] arguments = new String[]{reference.isSuper() ? "super" : "this"};
        this.handle(536871112, arguments, arguments, reference.sourceStart, reference.sourceEnd);
    }

    public void expressionShouldBeAVariable(Expression expression) {
        this.handle(1610612959, NoArgument, NoArgument, expression.sourceStart, expression.sourceEnd);
    }

    public void fakeReachable(ASTNode location) {
        int sourceStart = location.sourceStart;
        int sourceEnd = location.sourceEnd;
        if (location instanceof LocalDeclaration) {
            LocalDeclaration declaration = (LocalDeclaration)location;
            sourceStart = declaration.declarationSourceStart;
            sourceEnd = declaration.declarationSourceEnd;
        }
        this.handle(536871061, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void fieldHiding(FieldDeclaration fieldDecl, Binding hiddenVariable) {
        ReferenceBinding referenceBinding;
        FieldBinding field = fieldDecl.binding;
        if (CharOperation.equals(TypeConstants.SERIALVERSIONUID, field.name) && field.isStatic() && field.isPrivate() && field.isFinal() && TypeBinding.LONG == field.type && (referenceBinding = field.declaringClass) != null && referenceBinding.findSuperTypeOriginatingFrom(37, false) != null) {
            return;
        }
        if (CharOperation.equals(TypeConstants.SERIALPERSISTENTFIELDS, field.name) && field.isStatic() && field.isPrivate() && field.isFinal() && field.type.dimensions() == 1 && CharOperation.equals(TypeConstants.CharArray_JAVA_IO_OBJECTSTREAMFIELD, field.type.leafComponentType().readableName()) && (referenceBinding = field.declaringClass) != null && referenceBinding.findSuperTypeOriginatingFrom(37, false) != null) {
            return;
        }
        boolean isLocal = hiddenVariable instanceof LocalVariableBinding;
        int severity = this.computeSeverity(isLocal ? 570425436 : 570425437);
        if (severity == 256) {
            return;
        }
        if (isLocal) {
            this.handle(570425436, new String[]{new String(field.declaringClass.readableName()), new String(field.name)}, new String[]{new String(field.declaringClass.shortReadableName()), new String(field.name)}, severity, this.nodeSourceStart(hiddenVariable, fieldDecl), this.nodeSourceEnd(hiddenVariable, fieldDecl));
        } else if (hiddenVariable instanceof FieldBinding) {
            FieldBinding hiddenField = (FieldBinding)hiddenVariable;
            this.handle(570425437, new String[]{new String(field.declaringClass.readableName()), new String(field.name), new String(hiddenField.declaringClass.readableName())}, new String[]{new String(field.declaringClass.shortReadableName()), new String(field.name), new String(hiddenField.declaringClass.shortReadableName())}, severity, this.nodeSourceStart(hiddenField, fieldDecl), this.nodeSourceEnd(hiddenField, fieldDecl));
        }
    }

    public void fieldsOrThisBeforeConstructorInvocation(ThisReference reference) {
        this.handle(0x800008A, NoArgument, NoArgument, reference.sourceStart, reference.sourceEnd);
    }

    public void finallyMustCompleteNormally(Block finallyBlock) {
        this.handle(536871096, NoArgument, NoArgument, finallyBlock.sourceStart, finallyBlock.sourceEnd);
    }

    public void finalMethodCannotBeOverridden(MethodBinding currentMethod, MethodBinding inheritedMethod) {
        this.handle(67109265, new String[]{new String(inheritedMethod.declaringClass.readableName())}, new String[]{new String(inheritedMethod.declaringClass.shortReadableName())}, currentMethod.sourceStart(), currentMethod.sourceEnd());
    }

    public void finalVariableBound(TypeVariableBinding typeVariable, TypeReference typeRef) {
        if (this.options.sourceLevel < 0x310000L) {
            return;
        }
        int severity = this.computeSeverity(16777753);
        if (severity == 256) {
            return;
        }
        this.handle(16777753, new String[]{new String(typeVariable.sourceName), new String(typeRef.resolvedType.readableName())}, new String[]{new String(typeVariable.sourceName), new String(typeRef.resolvedType.shortReadableName())}, severity, typeRef.sourceStart, typeRef.sourceEnd);
    }

    public void forbiddenReference(FieldBinding field, ASTNode location, byte classpathEntryType, String classpathEntryName, int problemId) {
        int severity = this.computeSeverity(problemId);
        if (severity == 256) {
            return;
        }
        this.handle(problemId, new String[]{new String(field.readableName())}, ProblemReporter.getElaborationId(0x1000133, (byte)(4 | classpathEntryType)), new String[]{classpathEntryName, new String(field.shortReadableName()), new String(field.declaringClass.shortReadableName())}, severity, this.nodeSourceStart(field, location), this.nodeSourceEnd(field, location));
    }

    public void forbiddenReference(MethodBinding method, ASTNode location, byte classpathEntryType, String classpathEntryName, int problemId) {
        int severity = this.computeSeverity(problemId);
        if (severity == 256) {
            return;
        }
        if (method.isConstructor()) {
            this.handle(problemId, new String[]{new String(method.readableName())}, ProblemReporter.getElaborationId(0x1000133, (byte)(8 | classpathEntryType)), new String[]{classpathEntryName, new String(method.shortReadableName())}, severity, location.sourceStart, location.sourceEnd);
        } else {
            this.handle(problemId, new String[]{new String(method.readableName())}, ProblemReporter.getElaborationId(0x1000133, (byte)(0xC | classpathEntryType)), new String[]{classpathEntryName, new String(method.shortReadableName()), new String(method.declaringClass.shortReadableName())}, severity, location.sourceStart, location.sourceEnd);
        }
    }

    public void forbiddenReference(TypeBinding type, ASTNode location, byte classpathEntryType, String classpathEntryName, int problemId) {
        if (location == null) {
            return;
        }
        int severity = this.computeSeverity(problemId);
        if (severity == 256) {
            return;
        }
        this.handle(problemId, new String[]{new String(type.readableName())}, ProblemReporter.getElaborationId(0x1000133, classpathEntryType), new String[]{classpathEntryName, new String(type.shortReadableName())}, severity, location.sourceStart, location.sourceEnd);
    }

    public void forwardReference(Reference reference, int indexInQualification, FieldBinding field) {
        this.handle(570425419, NoArgument, NoArgument, this.nodeSourceStart(field, reference, indexInQualification), this.nodeSourceEnd(field, reference, indexInQualification));
    }

    public void forwardTypeVariableReference(ASTNode location, TypeVariableBinding type) {
        this.handle(0x1000210, new String[]{new String(type.readableName())}, new String[]{new String(type.shortReadableName())}, location.sourceStart, location.sourceEnd);
    }

    public void genericTypeCannotExtendThrowable(TypeDeclaration typeDecl) {
        TypeReference location = typeDecl.binding.isAnonymousType() ? typeDecl.allocation.type : typeDecl.superclass;
        this.handle(16777773, new String[]{new String(typeDecl.binding.readableName())}, new String[]{new String(typeDecl.binding.shortReadableName())}, location.sourceStart, location.sourceEnd);
    }

    private void handle(int problemId, String[] problemArguments, int elaborationId, String[] messageArguments, int severity, int problemStartPosition, int problemEndPosition) {
        this.handle(problemId, problemArguments, elaborationId, messageArguments, severity, problemStartPosition, problemEndPosition, this.referenceContext, this.referenceContext == null ? null : this.referenceContext.compilationResult());
        this.referenceContext = null;
    }

    private void handle(int problemId, String[] problemArguments, String[] messageArguments, int problemStartPosition, int problemEndPosition) {
        this.handle(problemId, problemArguments, messageArguments, problemStartPosition, problemEndPosition, this.referenceContext, this.referenceContext == null ? null : this.referenceContext.compilationResult());
        this.referenceContext = null;
    }

    private void handle(int problemId, String[] problemArguments, String[] messageArguments, int problemStartPosition, int problemEndPosition, CompilationResult unitResult) {
        this.handle(problemId, problemArguments, messageArguments, problemStartPosition, problemEndPosition, this.referenceContext, unitResult);
        this.referenceContext = null;
    }

    private void handle(int problemId, String[] problemArguments, String[] messageArguments, int severity, int problemStartPosition, int problemEndPosition) {
        this.handle(problemId, problemArguments, 0, messageArguments, severity, problemStartPosition, problemEndPosition);
    }

    public void hiddenCatchBlock(ReferenceBinding exceptionType, ASTNode location) {
        this.handle(16777381, new String[]{new String(exceptionType.readableName())}, new String[]{new String(exceptionType.shortReadableName())}, location.sourceStart, location.sourceEnd);
    }

    public void hierarchyCircularity(SourceTypeBinding sourceType, ReferenceBinding superType, TypeReference reference) {
        int start = 0;
        int end = 0;
        if (reference == null) {
            start = sourceType.sourceStart();
            end = sourceType.sourceEnd();
        } else {
            start = reference.sourceStart;
            end = reference.sourceEnd;
        }
        if (sourceType == superType) {
            this.handle(16777532, new String[]{new String(sourceType.readableName())}, new String[]{new String(sourceType.shortReadableName())}, start, end);
        } else {
            this.handle(16777533, new String[]{new String(sourceType.readableName()), new String(superType.readableName())}, new String[]{new String(sourceType.shortReadableName()), new String(superType.shortReadableName())}, start, end);
        }
    }

    public void hierarchyCircularity(TypeVariableBinding type, ReferenceBinding superType, TypeReference reference) {
        int start = 0;
        int end = 0;
        start = reference.sourceStart;
        end = reference.sourceEnd;
        if (type == superType) {
            this.handle(16777532, new String[]{new String(type.readableName())}, new String[]{new String(type.shortReadableName())}, start, end);
        } else {
            this.handle(16777533, new String[]{new String(type.readableName()), new String(superType.readableName())}, new String[]{new String(type.shortReadableName()), new String(superType.shortReadableName())}, start, end);
        }
    }

    public void hierarchyHasProblems(SourceTypeBinding type) {
        String[] arguments = new String[]{new String(type.sourceName())};
        this.handle(16777543, arguments, arguments, type.sourceStart(), type.sourceEnd());
    }

    public void illegalAbstractModifierCombinationForMethod(ReferenceBinding type, AbstractMethodDeclaration methodDecl) {
        String[] arguments = new String[]{new String(type.sourceName()), new String(methodDecl.selector)};
        this.handle(67109226, arguments, arguments, methodDecl.sourceStart, methodDecl.sourceEnd);
    }

    public void illegalAccessFromTypeVariable(TypeVariableBinding variable, ASTNode location) {
        if ((location.bits & 0x8000) != 0) {
            this.javadocInvalidReference(location.sourceStart, location.sourceEnd);
        } else {
            String[] arguments = new String[]{new String(variable.sourceName)};
            this.handle(16777791, arguments, arguments, location.sourceStart, location.sourceEnd);
        }
    }

    public void illegalClassLiteralForTypeVariable(TypeVariableBinding variable, ASTNode location) {
        String[] arguments = new String[]{new String(variable.sourceName)};
        this.handle(16777774, arguments, arguments, location.sourceStart, location.sourceEnd);
    }

    public void illegalExtendedDimensions(AnnotationMethodDeclaration annotationTypeMemberDeclaration) {
        this.handle(67109465, NoArgument, NoArgument, annotationTypeMemberDeclaration.sourceStart, annotationTypeMemberDeclaration.sourceEnd);
    }

    public void illegalExtendedDimensions(Argument argument) {
        this.handle(1610613536, NoArgument, NoArgument, argument.sourceStart, argument.sourceEnd);
    }

    public void illegalGenericArray(TypeBinding leafComponentType, ASTNode location) {
        this.handle(16777751, new String[]{new String(leafComponentType.readableName())}, new String[]{new String(leafComponentType.shortReadableName())}, location.sourceStart, location.sourceEnd);
    }

    public void illegalInstanceOfGenericType(TypeBinding checkedType, ASTNode location) {
        int i;
        TypeBinding erasedType = checkedType.leafComponentType().erasure();
        StringBuffer recommendedFormBuffer = new StringBuffer(10);
        if (erasedType instanceof ReferenceBinding) {
            ReferenceBinding referenceBinding = (ReferenceBinding)erasedType;
            recommendedFormBuffer.append(referenceBinding.qualifiedSourceName());
        } else {
            recommendedFormBuffer.append(erasedType.sourceName());
        }
        int count = erasedType.typeVariables().length;
        if (count > 0) {
            recommendedFormBuffer.append('<');
            i = 0;
            while (i < count) {
                if (i > 0) {
                    recommendedFormBuffer.append(',');
                }
                recommendedFormBuffer.append('?');
                ++i;
            }
            recommendedFormBuffer.append('>');
        }
        i = 0;
        int dim = checkedType.dimensions();
        while (i < dim) {
            recommendedFormBuffer.append("[]");
            ++i;
        }
        String recommendedForm = recommendedFormBuffer.toString();
        if (checkedType.leafComponentType().isTypeVariable()) {
            this.handle(0x20000223, new String[]{new String(checkedType.readableName()), recommendedForm}, new String[]{new String(checkedType.shortReadableName()), recommendedForm}, location.sourceStart, location.sourceEnd);
            return;
        }
        this.handle(0x20000222, new String[]{new String(checkedType.readableName()), recommendedForm}, new String[]{new String(checkedType.shortReadableName()), recommendedForm}, location.sourceStart, location.sourceEnd);
    }

    public void illegalLocalTypeDeclaration(TypeDeclaration typeDeclaration) {
        if (this.isRecoveredName(typeDeclaration.name)) {
            return;
        }
        int problemID = 0;
        if ((typeDeclaration.modifiers & 0x4000) != 0) {
            problemID = 536870943;
        } else if ((typeDeclaration.modifiers & 0x2000) != 0) {
            problemID = 536870942;
        } else if ((typeDeclaration.modifiers & 0x200) != 0) {
            problemID = 536870938;
        }
        if (problemID != 0) {
            String[] arguments = new String[]{new String(typeDeclaration.name)};
            this.handle(problemID, arguments, arguments, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
        }
    }

    public void illegalModifierCombinationFinalAbstractForClass(SourceTypeBinding type) {
        String[] arguments = new String[]{new String(type.sourceName())};
        this.handle(16777524, arguments, arguments, type.sourceStart(), type.sourceEnd());
    }

    public void illegalModifierCombinationFinalVolatileForField(ReferenceBinding type, FieldDeclaration fieldDecl) {
        String[] arguments = new String[]{new String(fieldDecl.name)};
        this.handle(33554777, arguments, arguments, fieldDecl.sourceStart, fieldDecl.sourceEnd);
    }

    public void illegalModifierForAnnotationField(FieldDeclaration fieldDecl) {
        String name = new String(fieldDecl.name);
        this.handle(536871527, new String[]{new String(fieldDecl.binding.declaringClass.readableName()), name}, new String[]{new String(fieldDecl.binding.declaringClass.shortReadableName()), name}, fieldDecl.sourceStart, fieldDecl.sourceEnd);
    }

    public void illegalModifierForAnnotationMember(AbstractMethodDeclaration methodDecl) {
        this.handle(67109464, new String[]{new String(methodDecl.binding.declaringClass.readableName()), new String(methodDecl.selector)}, new String[]{new String(methodDecl.binding.declaringClass.shortReadableName()), new String(methodDecl.selector)}, methodDecl.sourceStart, methodDecl.sourceEnd);
    }

    public void illegalModifierForAnnotationMemberType(SourceTypeBinding type) {
        String[] arguments = new String[]{new String(type.sourceName())};
        this.handle(16777820, arguments, arguments, type.sourceStart(), type.sourceEnd());
    }

    public void illegalModifierForAnnotationType(SourceTypeBinding type) {
        String[] arguments = new String[]{new String(type.sourceName())};
        this.handle(16777819, arguments, arguments, type.sourceStart(), type.sourceEnd());
    }

    public void illegalModifierForClass(SourceTypeBinding type) {
        String[] arguments = new String[]{new String(type.sourceName())};
        this.handle(16777518, arguments, arguments, type.sourceStart(), type.sourceEnd());
    }

    public void illegalModifierForEnum(SourceTypeBinding type) {
        String[] arguments = new String[]{new String(type.sourceName())};
        this.handle(16777966, arguments, arguments, type.sourceStart(), type.sourceEnd());
    }

    public void illegalModifierForEnumConstant(ReferenceBinding type, FieldDeclaration fieldDecl) {
        String[] arguments = new String[]{new String(fieldDecl.name)};
        this.handle(33555183, arguments, arguments, fieldDecl.sourceStart, fieldDecl.sourceEnd);
    }

    public void illegalModifierForEnumConstructor(AbstractMethodDeclaration constructor) {
        this.handle(67109624, NoArgument, NoArgument, constructor.sourceStart, constructor.sourceEnd);
    }

    public void illegalModifierForField(ReferenceBinding type, FieldDeclaration fieldDecl) {
        String[] arguments = new String[]{new String(fieldDecl.name)};
        this.handle(33554774, arguments, arguments, fieldDecl.sourceStart, fieldDecl.sourceEnd);
    }

    public void illegalModifierForInterface(SourceTypeBinding type) {
        String[] arguments = new String[]{new String(type.sourceName())};
        this.handle(16777519, arguments, arguments, type.sourceStart(), type.sourceEnd());
    }

    public void illegalModifierForInterfaceField(FieldDeclaration fieldDecl) {
        String name = new String(fieldDecl.name);
        this.handle(33554775, new String[]{new String(fieldDecl.binding.declaringClass.readableName()), name}, new String[]{new String(fieldDecl.binding.declaringClass.shortReadableName()), name}, fieldDecl.sourceStart, fieldDecl.sourceEnd);
    }

    public void illegalModifierForInterfaceMethod(AbstractMethodDeclaration methodDecl) {
        this.handle(67109223, new String[]{new String(methodDecl.selector)}, new String[]{new String(methodDecl.selector)}, methodDecl.sourceStart, methodDecl.sourceEnd);
    }

    public void illegalModifierForLocalClass(SourceTypeBinding type) {
        String[] arguments = new String[]{new String(type.sourceName())};
        this.handle(16777522, arguments, arguments, type.sourceStart(), type.sourceEnd());
    }

    public void illegalModifierForMemberClass(SourceTypeBinding type) {
        String[] arguments = new String[]{new String(type.sourceName())};
        this.handle(0x1000130, arguments, arguments, type.sourceStart(), type.sourceEnd());
    }

    public void illegalModifierForMemberEnum(SourceTypeBinding type) {
        String[] arguments = new String[]{new String(type.sourceName())};
        this.handle(16777969, arguments, arguments, type.sourceStart(), type.sourceEnd());
    }

    public void illegalModifierForMemberInterface(SourceTypeBinding type) {
        String[] arguments = new String[]{new String(type.sourceName())};
        this.handle(0x1000131, arguments, arguments, type.sourceStart(), type.sourceEnd());
    }

    public void illegalModifierForMethod(AbstractMethodDeclaration methodDecl) {
        this.handle(methodDecl.isConstructor() ? 67109233 : 67109222, new String[]{new String(methodDecl.selector)}, new String[]{new String(methodDecl.selector)}, methodDecl.sourceStart, methodDecl.sourceEnd);
    }

    public void illegalModifierForVariable(LocalDeclaration localDecl, boolean complainAsArgument) {
        String[] arguments = new String[]{new String(localDecl.name)};
        this.handle(complainAsArgument ? 67109220 : 67109260, arguments, arguments, localDecl.sourceStart, localDecl.sourceEnd);
    }

    public void illegalPrimitiveOrArrayTypeForEnclosingInstance(TypeBinding enclosingType, ASTNode location) {
        this.handle(0x100001B, new String[]{new String(enclosingType.readableName())}, new String[]{new String(enclosingType.shortReadableName())}, location.sourceStart, location.sourceEnd);
    }

    public void illegalQualifiedParameterizedTypeAllocation(TypeReference qualifiedTypeReference, TypeBinding allocatedType) {
        this.handle(16777782, new String[]{new String(allocatedType.readableName()), new String(allocatedType.enclosingType().readableName())}, new String[]{new String(allocatedType.shortReadableName()), new String(allocatedType.enclosingType().shortReadableName())}, qualifiedTypeReference.sourceStart, qualifiedTypeReference.sourceEnd);
    }

    public void illegalStaticModifierForMemberType(SourceTypeBinding type) {
        String[] arguments = new String[]{new String(type.sourceName())};
        this.handle(16777527, arguments, arguments, type.sourceStart(), type.sourceEnd());
    }

    public void illegalUsageOfQualifiedTypeReference(QualifiedTypeReference qualifiedTypeReference) {
        StringBuffer buffer = new StringBuffer();
        char[][] tokens = qualifiedTypeReference.tokens;
        int i = 0;
        while (i < tokens.length) {
            if (i > 0) {
                buffer.append('.');
            }
            buffer.append(tokens[i]);
            ++i;
        }
        String[] arguments = new String[]{String.valueOf(buffer)};
        this.handle(0x600000C6, arguments, arguments, qualifiedTypeReference.sourceStart, qualifiedTypeReference.sourceEnd);
    }

    public void illegalUsageOfWildcard(TypeReference wildcard) {
        this.handle(1610613314, NoArgument, NoArgument, wildcard.sourceStart, wildcard.sourceEnd);
    }

    public void illegalVararg(Argument argType, AbstractMethodDeclaration methodDecl) {
        String[] arguments = new String[]{CharOperation.toString(argType.type.getTypeName()), new String(methodDecl.selector)};
        this.handle(67109279, arguments, arguments, argType.sourceStart, argType.sourceEnd);
    }

    public void illegalVisibilityModifierCombinationForField(ReferenceBinding type, FieldDeclaration fieldDecl) {
        String[] arguments = new String[]{new String(fieldDecl.name)};
        this.handle(33554776, arguments, arguments, fieldDecl.sourceStart, fieldDecl.sourceEnd);
    }

    public void illegalVisibilityModifierCombinationForMemberType(SourceTypeBinding type) {
        String[] arguments = new String[]{new String(type.sourceName())};
        this.handle(16777526, arguments, arguments, type.sourceStart(), type.sourceEnd());
    }

    public void illegalVisibilityModifierCombinationForMethod(ReferenceBinding type, AbstractMethodDeclaration methodDecl) {
        String[] arguments = new String[]{new String(type.sourceName()), new String(methodDecl.selector)};
        this.handle(67109224, arguments, arguments, methodDecl.sourceStart, methodDecl.sourceEnd);
    }

    public void illegalVisibilityModifierForInterfaceMemberType(SourceTypeBinding type) {
        String[] arguments = new String[]{new String(type.sourceName())};
        this.handle(16777525, arguments, arguments, type.sourceStart(), type.sourceEnd());
    }

    public void illegalVoidExpression(ASTNode location) {
        this.handle(536871076, NoArgument, NoArgument, location.sourceStart, location.sourceEnd);
    }

    public void importProblem(ImportReference importRef, Binding expectedImport) {
        if (expectedImport instanceof FieldBinding) {
            int id = 33554502;
            FieldBinding field = (FieldBinding)expectedImport;
            String[] readableArguments = null;
            String[] shortArguments = null;
            switch (expectedImport.problemId()) {
                case 2: {
                    id = 33554503;
                    readableArguments = new String[]{CharOperation.toString(importRef.tokens), new String(field.declaringClass.readableName())};
                    shortArguments = new String[]{CharOperation.toString(importRef.tokens), new String(field.declaringClass.shortReadableName())};
                    break;
                }
                case 3: {
                    id = 33554504;
                    readableArguments = new String[]{new String(field.readableName())};
                    shortArguments = new String[]{new String(field.readableName())};
                    break;
                }
                case 8: {
                    id = 0x1000003;
                    readableArguments = new String[]{new String(field.declaringClass.leafComponentType().readableName())};
                    shortArguments = new String[]{new String(field.declaringClass.leafComponentType().shortReadableName())};
                }
            }
            this.handle(id, readableArguments, shortArguments, this.nodeSourceStart(field, importRef), this.nodeSourceEnd(field, importRef));
            return;
        }
        if (expectedImport.problemId() == 1) {
            char[][] tokens = expectedImport instanceof ProblemReferenceBinding ? ((ProblemReferenceBinding)expectedImport).compoundName : importRef.tokens;
            String[] arguments = new String[]{CharOperation.toString(tokens)};
            this.handle(268435846, arguments, arguments, importRef.sourceStart, (int)importRef.sourcePositions[tokens.length - 1]);
            return;
        }
        if (expectedImport.problemId() == 14) {
            char[][] tokens = importRef.tokens;
            String[] arguments = new String[]{CharOperation.toString(tokens)};
            this.handle(268435847, arguments, arguments, importRef.sourceStart, (int)importRef.sourcePositions[tokens.length - 1]);
            return;
        }
        this.invalidType(importRef, (TypeBinding)expectedImport);
    }

    public void incompatibleExceptionInThrowsClause(SourceTypeBinding type, MethodBinding currentMethod, MethodBinding inheritedMethod, ReferenceBinding exceptionType) {
        if (type == currentMethod.declaringClass) {
            int id = currentMethod.declaringClass.isInterface() && !inheritedMethod.isPublic() ? 67109278 : 67109266;
            this.handle(id, new String[]{new String(exceptionType.sourceName()), new String(CharOperation.concat(inheritedMethod.declaringClass.readableName(), inheritedMethod.readableName(), '.'))}, new String[]{new String(exceptionType.sourceName()), new String(CharOperation.concat(inheritedMethod.declaringClass.shortReadableName(), inheritedMethod.shortReadableName(), '.'))}, currentMethod.sourceStart(), currentMethod.sourceEnd());
        } else {
            this.handle(67109267, new String[]{new String(exceptionType.sourceName()), new String(CharOperation.concat(currentMethod.declaringClass.sourceName(), currentMethod.readableName(), '.')), new String(CharOperation.concat(inheritedMethod.declaringClass.readableName(), inheritedMethod.readableName(), '.'))}, new String[]{new String(exceptionType.sourceName()), new String(CharOperation.concat(currentMethod.declaringClass.sourceName(), currentMethod.shortReadableName(), '.')), new String(CharOperation.concat(inheritedMethod.declaringClass.shortReadableName(), inheritedMethod.shortReadableName(), '.'))}, type.sourceStart(), type.sourceEnd());
        }
    }

    public void incompatibleReturnType(MethodBinding currentMethod, MethodBinding inheritedMethod) {
        StringBuffer methodSignature = new StringBuffer();
        methodSignature.append(inheritedMethod.declaringClass.readableName()).append('.').append(inheritedMethod.readableName());
        StringBuffer shortSignature = new StringBuffer();
        shortSignature.append(inheritedMethod.declaringClass.shortReadableName()).append('.').append(inheritedMethod.shortReadableName());
        ReferenceBinding declaringClass = currentMethod.declaringClass;
        int id = declaringClass.isInterface() && !inheritedMethod.isPublic() ? 67109277 : 67109268;
        AbstractMethodDeclaration method = currentMethod.sourceMethod();
        int sourceStart = 0;
        int sourceEnd = 0;
        if (method == null) {
            if (declaringClass instanceof SourceTypeBinding) {
                SourceTypeBinding sourceTypeBinding = (SourceTypeBinding)declaringClass;
                sourceStart = sourceTypeBinding.sourceStart();
                sourceEnd = sourceTypeBinding.sourceEnd();
            }
        } else if (method.isConstructor()) {
            sourceStart = method.sourceStart;
            sourceEnd = method.sourceEnd;
        } else {
            TypeReference returnType = ((MethodDeclaration)method).returnType;
            sourceStart = returnType.sourceStart;
            if (returnType instanceof ParameterizedSingleTypeReference) {
                ParameterizedSingleTypeReference typeReference = (ParameterizedSingleTypeReference)returnType;
                TypeReference[] typeArguments = typeReference.typeArguments;
                sourceEnd = typeArguments[typeArguments.length - 1].sourceEnd > typeReference.sourceEnd ? this.retrieveClosingAngleBracketPosition(typeReference.sourceEnd) : returnType.sourceEnd;
            } else if (returnType instanceof ParameterizedQualifiedTypeReference) {
                ParameterizedQualifiedTypeReference typeReference = (ParameterizedQualifiedTypeReference)returnType;
                sourceEnd = this.retrieveClosingAngleBracketPosition(typeReference.sourceEnd);
            } else {
                sourceEnd = returnType.sourceEnd;
            }
        }
        this.handle(id, new String[]{methodSignature.toString()}, new String[]{shortSignature.toString()}, sourceStart, sourceEnd);
    }

    public void incorrectArityForParameterizedType(ASTNode location, TypeBinding type, TypeBinding[] argumentTypes) {
        this.incorrectArityForParameterizedType(location, type, argumentTypes, Integer.MAX_VALUE);
    }

    public void incorrectArityForParameterizedType(ASTNode location, TypeBinding type, TypeBinding[] argumentTypes, int index) {
        if (location == null) {
            this.handle(16777741, new String[]{new String(type.readableName()), this.typesAsString(argumentTypes, false)}, new String[]{new String(type.shortReadableName()), this.typesAsString(argumentTypes, true)}, 131, 0, 0);
            return;
        }
        this.handle(16777741, new String[]{new String(type.readableName()), this.typesAsString(argumentTypes, false)}, new String[]{new String(type.shortReadableName()), this.typesAsString(argumentTypes, true)}, location.sourceStart, this.nodeSourceEnd(null, location, index));
    }

    public void diamondNotBelow17(ASTNode location) {
        this.diamondNotBelow17(location, Integer.MAX_VALUE);
    }

    public void diamondNotBelow17(ASTNode location, int index) {
        if (location == null) {
            this.handle(16778099, NoArgument, NoArgument, 131, 0, 0);
            return;
        }
        this.handle(16778099, NoArgument, NoArgument, location.sourceStart, this.nodeSourceEnd(null, location, index));
    }

    public void incorrectLocationForNonEmptyDimension(ArrayAllocationExpression expression, int index) {
        this.handle(536871114, NoArgument, NoArgument, expression.dimensions[index].sourceStart, expression.dimensions[index].sourceEnd);
    }

    public void incorrectSwitchType(Expression expression, TypeBinding testType) {
        if (this.options.sourceLevel < 0x330000L) {
            if (testType.id == 11) {
                this.handle(16778097, new String[]{new String(testType.readableName())}, new String[]{new String(testType.shortReadableName())}, expression.sourceStart, expression.sourceEnd);
            } else {
                this.handle(16777385, new String[]{new String(testType.readableName())}, new String[]{new String(testType.shortReadableName())}, expression.sourceStart, expression.sourceEnd);
            }
        } else {
            this.handle(16778093, new String[]{new String(testType.readableName())}, new String[]{new String(testType.shortReadableName())}, expression.sourceStart, expression.sourceEnd);
        }
    }

    public void indirectAccessToStaticField(ASTNode location, FieldBinding field) {
        int severity = this.computeSeverity(570425422);
        if (severity == 256) {
            return;
        }
        this.handle(570425422, new String[]{new String(field.declaringClass.readableName()), new String(field.name)}, new String[]{new String(field.declaringClass.shortReadableName()), new String(field.name)}, severity, this.nodeSourceStart(field, location), this.nodeSourceEnd(field, location));
    }

    public void indirectAccessToStaticMethod(ASTNode location, MethodBinding method) {
        int severity = this.computeSeverity(603979895);
        if (severity == 256) {
            return;
        }
        this.handle(603979895, new String[]{new String(method.declaringClass.readableName()), new String(method.selector), this.typesAsString(method, false)}, new String[]{new String(method.declaringClass.shortReadableName()), new String(method.selector), this.typesAsString(method, true)}, severity, location.sourceStart, location.sourceEnd);
    }

    private void inheritedMethodReducesVisibility(int sourceStart, int sourceEnd, MethodBinding concreteMethod, MethodBinding[] abstractMethods) {
        StringBuffer concreteSignature = new StringBuffer();
        concreteSignature.append(concreteMethod.declaringClass.readableName()).append('.').append(concreteMethod.readableName());
        StringBuffer shortSignature = new StringBuffer();
        shortSignature.append(concreteMethod.declaringClass.shortReadableName()).append('.').append(concreteMethod.shortReadableName());
        this.handle(67109269, new String[]{concreteSignature.toString(), new String(abstractMethods[0].declaringClass.readableName())}, new String[]{shortSignature.toString(), new String(abstractMethods[0].declaringClass.shortReadableName())}, sourceStart, sourceEnd);
    }

    public void inheritedMethodReducesVisibility(SourceTypeBinding type, MethodBinding concreteMethod, MethodBinding[] abstractMethods) {
        this.inheritedMethodReducesVisibility(type.sourceStart(), type.sourceEnd(), concreteMethod, abstractMethods);
    }

    public void inheritedMethodReducesVisibility(TypeParameter typeParameter, MethodBinding concreteMethod, MethodBinding[] abstractMethods) {
        this.inheritedMethodReducesVisibility(typeParameter.sourceStart(), typeParameter.sourceEnd(), concreteMethod, abstractMethods);
    }

    public void inheritedMethodsHaveIncompatibleReturnTypes(ASTNode location, MethodBinding[] inheritedMethods, int length) {
        StringBuffer methodSignatures = new StringBuffer();
        StringBuffer shortSignatures = new StringBuffer();
        int i = length;
        while (--i >= 0) {
            methodSignatures.append(inheritedMethods[i].declaringClass.readableName()).append('.').append(inheritedMethods[i].readableName());
            shortSignatures.append(inheritedMethods[i].declaringClass.shortReadableName()).append('.').append(inheritedMethods[i].shortReadableName());
            if (i == 0) continue;
            methodSignatures.append(", ");
            shortSignatures.append(", ");
        }
        this.handle(67109283, new String[]{methodSignatures.toString()}, new String[]{shortSignatures.toString()}, location.sourceStart, location.sourceEnd);
    }

    public void inheritedMethodsHaveIncompatibleReturnTypes(SourceTypeBinding type, MethodBinding[] inheritedMethods, int length) {
        StringBuffer methodSignatures = new StringBuffer();
        StringBuffer shortSignatures = new StringBuffer();
        int i = length;
        while (--i >= 0) {
            methodSignatures.append(inheritedMethods[i].declaringClass.readableName()).append('.').append(inheritedMethods[i].readableName());
            shortSignatures.append(inheritedMethods[i].declaringClass.shortReadableName()).append('.').append(inheritedMethods[i].shortReadableName());
            if (i == 0) continue;
            methodSignatures.append(", ");
            shortSignatures.append(", ");
        }
        this.handle(67109283, new String[]{methodSignatures.toString()}, new String[]{shortSignatures.toString()}, type.sourceStart(), type.sourceEnd());
    }

    public void inheritedMethodsHaveNameClash(SourceTypeBinding type, MethodBinding oneMethod, MethodBinding twoMethod) {
        this.handle(67109424, new String[]{new String(oneMethod.selector), this.typesAsString(oneMethod.original(), false), new String(oneMethod.declaringClass.readableName()), this.typesAsString(twoMethod.original(), false), new String(twoMethod.declaringClass.readableName())}, new String[]{new String(oneMethod.selector), this.typesAsString(oneMethod.original(), true), new String(oneMethod.declaringClass.shortReadableName()), this.typesAsString(twoMethod.original(), true), new String(twoMethod.declaringClass.shortReadableName())}, type.sourceStart(), type.sourceEnd());
    }

    public void initializerMustCompleteNormally(FieldDeclaration fieldDecl) {
        this.handle(536871075, NoArgument, NoArgument, fieldDecl.sourceStart, fieldDecl.sourceEnd);
    }

    public void innerTypesCannotDeclareStaticInitializers(ReferenceBinding innerType, Initializer initializer) {
        this.handle(536870936, new String[]{new String(innerType.readableName())}, new String[]{new String(innerType.shortReadableName())}, initializer.sourceStart, initializer.sourceStart);
    }

    public void interfaceCannotHaveConstructors(ConstructorDeclaration constructor) {
        this.handle(1610612943, NoArgument, NoArgument, constructor.sourceStart, constructor.sourceEnd, constructor, constructor.compilationResult());
    }

    public void interfaceCannotHaveInitializers(char[] sourceName, FieldDeclaration fieldDecl) {
        String[] arguments = new String[]{new String(sourceName)};
        this.handle(16777516, arguments, arguments, fieldDecl.sourceStart, fieldDecl.sourceEnd);
    }

    public void invalidAnnotationMemberType(MethodDeclaration methodDecl) {
        this.handle(16777821, new String[]{new String(methodDecl.binding.returnType.readableName()), new String(methodDecl.selector), new String(methodDecl.binding.declaringClass.readableName())}, new String[]{new String(methodDecl.binding.returnType.shortReadableName()), new String(methodDecl.selector), new String(methodDecl.binding.declaringClass.shortReadableName())}, methodDecl.returnType.sourceStart, methodDecl.returnType.sourceEnd);
    }

    public void invalidBreak(ASTNode location) {
        this.handle(536871084, NoArgument, NoArgument, location.sourceStart, location.sourceEnd);
    }

    public void invalidConstructor(Statement statement, MethodBinding targetConstructor) {
        boolean insideDefaultConstructor = this.referenceContext instanceof ConstructorDeclaration && ((ConstructorDeclaration)this.referenceContext).isDefaultConstructor();
        boolean insideImplicitConstructorCall = statement instanceof ExplicitConstructorCall && ((ExplicitConstructorCall)statement).accessMode == 1;
        int sourceStart = statement.sourceStart;
        int sourceEnd = statement.sourceEnd;
        if (statement instanceof AllocationExpression) {
            AllocationExpression allocation = (AllocationExpression)statement;
            if (allocation.enumConstant != null) {
                sourceStart = allocation.enumConstant.sourceStart;
                sourceEnd = allocation.enumConstant.sourceEnd;
            }
        }
        int id = 0x8000082;
        MethodBinding shownConstructor = targetConstructor;
        switch (targetConstructor.problemId()) {
            case 1: {
                ProblemMethodBinding problemConstructor = (ProblemMethodBinding)targetConstructor;
                if (problemConstructor.closestMatch != null && (problemConstructor.closestMatch.tagBits & 0x80L) != 0L) {
                    this.missingTypeInConstructor(statement, problemConstructor.closestMatch);
                    return;
                }
                if (insideDefaultConstructor) {
                    id = 0x800008C;
                    break;
                }
                if (insideImplicitConstructorCall) {
                    id = 0x800008F;
                    break;
                }
                id = 0x8000082;
                break;
            }
            case 2: {
                id = insideDefaultConstructor ? 0x800008D : (insideImplicitConstructorCall ? 0x8000090 : 0x8000083);
                ProblemMethodBinding problemConstructor = (ProblemMethodBinding)targetConstructor;
                if (problemConstructor.closestMatch == null) break;
                shownConstructor = problemConstructor.closestMatch.original();
                break;
            }
            case 3: {
                if (insideDefaultConstructor) {
                    id = 0x800008E;
                    break;
                }
                if (insideImplicitConstructorCall) {
                    id = 134217873;
                    break;
                }
                id = 0x8000084;
                break;
            }
            case 10: {
                ProblemMethodBinding problemConstructor = (ProblemMethodBinding)targetConstructor;
                ParameterizedGenericMethodBinding substitutedConstructor = (ParameterizedGenericMethodBinding)problemConstructor.closestMatch;
                shownConstructor = substitutedConstructor.original();
                int augmentedLength = problemConstructor.parameters.length;
                TypeBinding inferredTypeArgument = problemConstructor.parameters[augmentedLength - 2];
                TypeVariableBinding typeParameter = (TypeVariableBinding)problemConstructor.parameters[augmentedLength - 1];
                TypeBinding[] invocationArguments = new TypeBinding[augmentedLength - 2];
                System.arraycopy(problemConstructor.parameters, 0, invocationArguments, 0, augmentedLength - 2);
                this.handle(0x1000220, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, false), new String(shownConstructor.declaringClass.readableName()), this.typesAsString(invocationArguments, false), new String(inferredTypeArgument.readableName()), new String(typeParameter.sourceName), this.parameterBoundAsString(typeParameter, false)}, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, true), new String(shownConstructor.declaringClass.shortReadableName()), this.typesAsString(invocationArguments, true), new String(inferredTypeArgument.shortReadableName()), new String(typeParameter.sourceName), this.parameterBoundAsString(typeParameter, true)}, sourceStart, sourceEnd);
                return;
            }
            case 11: {
                ProblemMethodBinding problemConstructor = (ProblemMethodBinding)targetConstructor;
                shownConstructor = problemConstructor.closestMatch;
                if (shownConstructor.typeVariables == Binding.NO_TYPE_VARIABLES) {
                    this.handle(16777767, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, false), new String(shownConstructor.declaringClass.readableName()), this.typesAsString(targetConstructor, false)}, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, true), new String(shownConstructor.declaringClass.shortReadableName()), this.typesAsString(targetConstructor, true)}, sourceStart, sourceEnd);
                } else {
                    this.handle(16777768, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, false), new String(shownConstructor.declaringClass.readableName()), this.typesAsString(shownConstructor.typeVariables, false), this.typesAsString(targetConstructor, false)}, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, true), new String(shownConstructor.declaringClass.shortReadableName()), this.typesAsString(shownConstructor.typeVariables, true), this.typesAsString(targetConstructor, true)}, sourceStart, sourceEnd);
                }
                return;
            }
            case 12: {
                ProblemMethodBinding problemConstructor = (ProblemMethodBinding)targetConstructor;
                shownConstructor = problemConstructor.closestMatch;
                this.handle(16777769, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, false), new String(shownConstructor.declaringClass.readableName()), this.typesAsString(((ParameterizedGenericMethodBinding)shownConstructor).typeArguments, false), this.typesAsString(targetConstructor, false)}, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, true), new String(shownConstructor.declaringClass.shortReadableName()), this.typesAsString(((ParameterizedGenericMethodBinding)shownConstructor).typeArguments, true), this.typesAsString(targetConstructor, true)}, sourceStart, sourceEnd);
                return;
            }
            case 13: {
                ProblemMethodBinding problemConstructor = (ProblemMethodBinding)targetConstructor;
                shownConstructor = problemConstructor.closestMatch;
                this.handle(16777771, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, false), new String(shownConstructor.declaringClass.readableName()), this.typesAsString(targetConstructor, false)}, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, true), new String(shownConstructor.declaringClass.shortReadableName()), this.typesAsString(targetConstructor, true)}, sourceStart, sourceEnd);
                return;
            }
            default: {
                this.needImplementation(statement);
            }
        }
        this.handle(id, new String[]{new String(targetConstructor.declaringClass.readableName()), this.typesAsString(shownConstructor, false)}, new String[]{new String(targetConstructor.declaringClass.shortReadableName()), this.typesAsString(shownConstructor, true)}, sourceStart, sourceEnd);
    }

    public void invalidContinue(ASTNode location) {
        this.handle(536871085, NoArgument, NoArgument, location.sourceStart, location.sourceEnd);
    }

    public void invalidEnclosingType(Expression expression, TypeBinding type, ReferenceBinding enclosingType) {
        if (enclosingType.isAnonymousType()) {
            enclosingType = enclosingType.superclass();
        }
        if (enclosingType.sourceName != null && enclosingType.sourceName.length == 0) {
            return;
        }
        int flag = 0x1000002;
        switch (type.problemId()) {
            case 1: {
                flag = 0x1000002;
                break;
            }
            case 2: {
                flag = 0x1000003;
                break;
            }
            case 3: {
                flag = 0x1000004;
                break;
            }
            case 4: {
                flag = 0x1000006;
                break;
            }
            default: {
                this.needImplementation(expression);
            }
        }
        this.handle(flag, new String[]{String.valueOf(new String(enclosingType.readableName())) + "." + new String(type.readableName())}, new String[]{String.valueOf(new String(enclosingType.shortReadableName())) + "." + new String(type.shortReadableName())}, expression.sourceStart, expression.sourceEnd);
    }

    public void invalidExplicitConstructorCall(ASTNode location) {
        this.handle(1207959691, NoArgument, NoArgument, location.sourceStart, location.sourceEnd);
    }

    public void invalidExpressionAsStatement(Expression expression) {
        this.handle(1610612958, NoArgument, NoArgument, expression.sourceStart, expression.sourceEnd);
    }

    public void invalidField(FieldReference fieldRef, TypeBinding searchedType) {
        if (this.isRecoveredName(fieldRef.token)) {
            return;
        }
        int id = 33554502;
        FieldBinding field = fieldRef.binding;
        switch (field.problemId()) {
            case 1: {
                if ((searchedType.tagBits & 0x80L) != 0L) {
                    this.handle(0x1000002, new String[]{new String(searchedType.leafComponentType().readableName())}, new String[]{new String(searchedType.leafComponentType().shortReadableName())}, fieldRef.receiver.sourceStart, fieldRef.receiver.sourceEnd);
                    return;
                }
                id = 33554502;
                break;
            }
            case 2: {
                this.handle(33554503, new String[]{new String(fieldRef.token), new String(field.declaringClass.readableName())}, new String[]{new String(fieldRef.token), new String(field.declaringClass.shortReadableName())}, this.nodeSourceStart(field, fieldRef), this.nodeSourceEnd(field, fieldRef));
                return;
            }
            case 3: {
                id = 33554504;
                break;
            }
            case 7: {
                id = 33554506;
                break;
            }
            case 6: {
                id = 0x8000087;
                break;
            }
            case 5: {
                id = 33554628;
                break;
            }
            case 8: {
                this.handle(0x1000003, new String[]{new String(searchedType.leafComponentType().readableName())}, new String[]{new String(searchedType.leafComponentType().shortReadableName())}, fieldRef.receiver.sourceStart, fieldRef.receiver.sourceEnd);
                return;
            }
            default: {
                this.needImplementation(fieldRef);
            }
        }
        String[] arguments = new String[]{new String(field.readableName())};
        this.handle(id, arguments, arguments, this.nodeSourceStart(field, fieldRef), this.nodeSourceEnd(field, fieldRef));
    }

    public void invalidField(NameReference nameRef, FieldBinding field) {
        NameReference ref;
        if (nameRef instanceof QualifiedNameReference) {
            ref = (QualifiedNameReference)nameRef;
            if (this.isRecoveredName(ref.tokens)) {
                return;
            }
        } else {
            ref = (SingleNameReference)nameRef;
            if (this.isRecoveredName(((SingleNameReference)ref).token)) {
                return;
            }
        }
        int id = 33554502;
        switch (field.problemId()) {
            case 1: {
                ReferenceBinding declaringClass = field.declaringClass;
                if (declaringClass != null && (declaringClass.tagBits & 0x80L) != 0L) {
                    this.handle(0x1000002, new String[]{new String(field.declaringClass.readableName())}, new String[]{new String(field.declaringClass.shortReadableName())}, nameRef.sourceStart, nameRef.sourceEnd);
                    return;
                }
                String[] arguments = new String[]{new String(field.readableName())};
                this.handle(id, arguments, arguments, this.nodeSourceStart(field, nameRef), this.nodeSourceEnd(field, nameRef));
                return;
            }
            case 2: {
                char[] name = field.readableName();
                name = CharOperation.lastSegment(name, '.');
                this.handle(33554503, new String[]{new String(name), new String(field.declaringClass.readableName())}, new String[]{new String(name), new String(field.declaringClass.shortReadableName())}, this.nodeSourceStart(field, nameRef), this.nodeSourceEnd(field, nameRef));
                return;
            }
            case 3: {
                id = 33554504;
                break;
            }
            case 7: {
                id = 33554506;
                break;
            }
            case 6: {
                id = 0x8000087;
                break;
            }
            case 5: {
                id = 33554628;
                break;
            }
            case 8: {
                this.handle(0x1000003, new String[]{new String(field.declaringClass.readableName())}, new String[]{new String(field.declaringClass.shortReadableName())}, nameRef.sourceStart, nameRef.sourceEnd);
                return;
            }
            default: {
                this.needImplementation(nameRef);
            }
        }
        String[] arguments = new String[]{new String(field.readableName())};
        this.handle(id, arguments, arguments, nameRef.sourceStart, nameRef.sourceEnd);
    }

    public void invalidField(QualifiedNameReference nameRef, FieldBinding field, int index, TypeBinding searchedType) {
        if (this.isRecoveredName(nameRef.tokens)) {
            return;
        }
        if (searchedType.isBaseType()) {
            this.handle(0x20000DD, new String[]{new String(searchedType.readableName()), CharOperation.toString(CharOperation.subarray(nameRef.tokens, 0, index)), new String(nameRef.tokens[index])}, new String[]{new String(searchedType.sourceName()), CharOperation.toString(CharOperation.subarray(nameRef.tokens, 0, index)), new String(nameRef.tokens[index])}, nameRef.sourceStart, (int)nameRef.sourcePositions[index]);
            return;
        }
        int id = 33554502;
        switch (field.problemId()) {
            case 1: {
                if ((searchedType.tagBits & 0x80L) != 0L) {
                    this.handle(0x1000002, new String[]{new String(searchedType.leafComponentType().readableName())}, new String[]{new String(searchedType.leafComponentType().shortReadableName())}, nameRef.sourceStart, (int)nameRef.sourcePositions[index - 1]);
                    return;
                }
                String fieldName = new String(nameRef.tokens[index]);
                String[] arguments = new String[]{fieldName};
                this.handle(id, arguments, arguments, this.nodeSourceStart(field, nameRef), this.nodeSourceEnd(field, nameRef));
                return;
            }
            case 2: {
                String fieldName = new String(nameRef.tokens[index]);
                this.handle(33554503, new String[]{fieldName, new String(field.declaringClass.readableName())}, new String[]{fieldName, new String(field.declaringClass.shortReadableName())}, this.nodeSourceStart(field, nameRef), this.nodeSourceEnd(field, nameRef));
                return;
            }
            case 3: {
                id = 33554504;
                break;
            }
            case 7: {
                id = 33554506;
                break;
            }
            case 6: {
                id = 0x8000087;
                break;
            }
            case 5: {
                id = 33554628;
                break;
            }
            case 8: {
                this.handle(0x1000003, new String[]{new String(searchedType.leafComponentType().readableName())}, new String[]{new String(searchedType.leafComponentType().shortReadableName())}, nameRef.sourceStart, (int)nameRef.sourcePositions[index - 1]);
                return;
            }
            default: {
                this.needImplementation(nameRef);
            }
        }
        String[] arguments = new String[]{CharOperation.toString(CharOperation.subarray(nameRef.tokens, 0, index + 1))};
        this.handle(id, arguments, arguments, nameRef.sourceStart, (int)nameRef.sourcePositions[index]);
    }

    public void invalidFileNameForPackageAnnotations(Annotation annotation) {
        this.handle(1610613338, NoArgument, NoArgument, annotation.sourceStart, annotation.sourceEnd);
    }

    public void invalidMethod(MessageSend messageSend, MethodBinding method) {
        if (this.isRecoveredName(messageSend.selector)) {
            return;
        }
        int id = 0x4000064;
        MethodBinding shownMethod = method;
        switch (method.problemId()) {
            case 1: {
                if ((method.declaringClass.tagBits & 0x80L) != 0L) {
                    this.handle(0x1000002, new String[]{new String(method.declaringClass.readableName())}, new String[]{new String(method.declaringClass.shortReadableName())}, messageSend.receiver.sourceStart, messageSend.receiver.sourceEnd);
                    return;
                }
                id = 0x4000064;
                ProblemMethodBinding problemMethod = (ProblemMethodBinding)method;
                if (problemMethod.closestMatch == null) break;
                shownMethod = problemMethod.closestMatch;
                if ((shownMethod.tagBits & 0x80L) != 0L) {
                    this.missingTypeInMethod(messageSend, shownMethod);
                    return;
                }
                String closestParameterTypeNames = this.typesAsString(shownMethod, false);
                String parameterTypeNames = this.typesAsString(problemMethod.parameters, false);
                String closestParameterTypeShortNames = this.typesAsString(shownMethod, true);
                String parameterTypeShortNames = this.typesAsString(problemMethod.parameters, true);
                this.handle(67108979, new String[]{new String(shownMethod.declaringClass.readableName()), new String(shownMethod.selector), closestParameterTypeNames, parameterTypeNames}, new String[]{new String(shownMethod.declaringClass.shortReadableName()), new String(shownMethod.selector), closestParameterTypeShortNames, parameterTypeShortNames}, (int)(messageSend.nameSourcePosition >>> 32), (int)messageSend.nameSourcePosition);
                return;
            }
            case 2: {
                id = 67108965;
                ProblemMethodBinding problemMethod = (ProblemMethodBinding)method;
                if (problemMethod.closestMatch == null) break;
                shownMethod = problemMethod.closestMatch.original();
                break;
            }
            case 3: {
                id = 0x4000066;
                break;
            }
            case 5: {
                id = 67109059;
                break;
            }
            case 6: {
                id = 0x8000088;
                break;
            }
            case 7: {
                id = 603979977;
                break;
            }
            case 8: {
                this.handle(0x1000003, new String[]{new String(method.declaringClass.readableName())}, new String[]{new String(method.declaringClass.shortReadableName())}, messageSend.receiver.sourceStart, messageSend.receiver.sourceEnd);
                return;
            }
            case 10: {
                ProblemMethodBinding problemMethod = (ProblemMethodBinding)method;
                ParameterizedGenericMethodBinding substitutedMethod = (ParameterizedGenericMethodBinding)problemMethod.closestMatch;
                shownMethod = substitutedMethod.original();
                int augmentedLength = problemMethod.parameters.length;
                TypeBinding inferredTypeArgument = problemMethod.parameters[augmentedLength - 2];
                TypeVariableBinding typeParameter = (TypeVariableBinding)problemMethod.parameters[augmentedLength - 1];
                TypeBinding[] invocationArguments = new TypeBinding[augmentedLength - 2];
                System.arraycopy(problemMethod.parameters, 0, invocationArguments, 0, augmentedLength - 2);
                this.handle(16777759, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, false), new String(shownMethod.declaringClass.readableName()), this.typesAsString(invocationArguments, false), new String(inferredTypeArgument.readableName()), new String(typeParameter.sourceName), this.parameterBoundAsString(typeParameter, false)}, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, true), new String(shownMethod.declaringClass.shortReadableName()), this.typesAsString(invocationArguments, true), new String(inferredTypeArgument.shortReadableName()), new String(typeParameter.sourceName), this.parameterBoundAsString(typeParameter, true)}, (int)(messageSend.nameSourcePosition >>> 32), (int)messageSend.nameSourcePosition);
                return;
            }
            case 11: {
                ProblemMethodBinding problemMethod = (ProblemMethodBinding)method;
                shownMethod = problemMethod.closestMatch;
                if (shownMethod.typeVariables == Binding.NO_TYPE_VARIABLES) {
                    this.handle(16777764, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, false), new String(shownMethod.declaringClass.readableName()), this.typesAsString(method, false)}, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, true), new String(shownMethod.declaringClass.shortReadableName()), this.typesAsString(method, true)}, (int)(messageSend.nameSourcePosition >>> 32), (int)messageSend.nameSourcePosition);
                } else {
                    this.handle(16777765, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, false), new String(shownMethod.declaringClass.readableName()), this.typesAsString(shownMethod.typeVariables, false), this.typesAsString(method, false)}, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, true), new String(shownMethod.declaringClass.shortReadableName()), this.typesAsString(shownMethod.typeVariables, true), this.typesAsString(method, true)}, (int)(messageSend.nameSourcePosition >>> 32), (int)messageSend.nameSourcePosition);
                }
                return;
            }
            case 12: {
                ProblemMethodBinding problemMethod = (ProblemMethodBinding)method;
                shownMethod = problemMethod.closestMatch;
                this.handle(16777766, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, false), new String(shownMethod.declaringClass.readableName()), this.typesAsString(((ParameterizedGenericMethodBinding)shownMethod).typeArguments, false), this.typesAsString(method, false)}, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, true), new String(shownMethod.declaringClass.shortReadableName()), this.typesAsString(((ParameterizedGenericMethodBinding)shownMethod).typeArguments, true), this.typesAsString(method, true)}, (int)(messageSend.nameSourcePosition >>> 32), (int)messageSend.nameSourcePosition);
                return;
            }
            case 13: {
                ProblemMethodBinding problemMethod = (ProblemMethodBinding)method;
                shownMethod = problemMethod.closestMatch;
                this.handle(16777770, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, false), new String(shownMethod.declaringClass.readableName()), this.typesAsString(method, false)}, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, true), new String(shownMethod.declaringClass.shortReadableName()), this.typesAsString(method, true)}, (int)(messageSend.nameSourcePosition >>> 32), (int)messageSend.nameSourcePosition);
                return;
            }
            default: {
                this.needImplementation(messageSend);
            }
        }
        this.handle(id, new String[]{new String(method.declaringClass.readableName()), new String(shownMethod.selector), this.typesAsString(shownMethod, false)}, new String[]{new String(method.declaringClass.shortReadableName()), new String(shownMethod.selector), this.typesAsString(shownMethod, true)}, (int)(messageSend.nameSourcePosition >>> 32), (int)messageSend.nameSourcePosition);
    }

    public void invalidNullToSynchronize(Expression expression) {
        this.handle(0x200000B0, NoArgument, NoArgument, expression.sourceStart, expression.sourceEnd);
    }

    public void invalidOperator(BinaryExpression expression, TypeBinding leftType, TypeBinding rightType) {
        String rightShortName;
        String leftName = new String(leftType.readableName());
        String rightName = new String(rightType.readableName());
        String leftShortName = new String(leftType.shortReadableName());
        if (leftShortName.equals(rightShortName = new String(rightType.shortReadableName()))) {
            leftShortName = leftName;
            rightShortName = rightName;
        }
        this.handle(0x200000A0, new String[]{expression.operatorToString(), String.valueOf(leftName) + ", " + rightName}, new String[]{expression.operatorToString(), String.valueOf(leftShortName) + ", " + rightShortName}, expression.sourceStart, expression.sourceEnd);
    }

    public void invalidOperator(CompoundAssignment assign, TypeBinding leftType, TypeBinding rightType) {
        String rightShortName;
        String leftName = new String(leftType.readableName());
        String rightName = new String(rightType.readableName());
        String leftShortName = new String(leftType.shortReadableName());
        if (leftShortName.equals(rightShortName = new String(rightType.shortReadableName()))) {
            leftShortName = leftName;
            rightShortName = rightName;
        }
        this.handle(0x200000A0, new String[]{assign.operatorToString(), String.valueOf(leftName) + ", " + rightName}, new String[]{assign.operatorToString(), String.valueOf(leftShortName) + ", " + rightShortName}, assign.sourceStart, assign.sourceEnd);
    }

    public void invalidOperator(UnaryExpression expression, TypeBinding type) {
        this.handle(0x200000A0, new String[]{expression.operatorToString(), new String(type.readableName())}, new String[]{expression.operatorToString(), new String(type.shortReadableName())}, expression.sourceStart, expression.sourceEnd);
    }

    public void invalidParameterizedExceptionType(TypeBinding exceptionType, ASTNode location) {
        this.handle(16777750, new String[]{new String(exceptionType.readableName())}, new String[]{new String(exceptionType.shortReadableName())}, location.sourceStart, location.sourceEnd);
    }

    public void invalidParenthesizedExpression(ASTNode reference) {
        this.handle(1610612961, NoArgument, NoArgument, reference.sourceStart, reference.sourceEnd);
    }

    public void invalidType(ASTNode location, TypeBinding type) {
        List missingTypes;
        TypeBinding leafType;
        if (type instanceof ReferenceBinding ? this.isRecoveredName(((ReferenceBinding)type).compoundName) : type instanceof ArrayBinding && (leafType = ((ArrayBinding)type).leafComponentType) instanceof ReferenceBinding && this.isRecoveredName(((ReferenceBinding)leafType).compoundName)) {
            return;
        }
        if (type.isParameterizedType() && (missingTypes = type.collectMissingTypes(null)) != null) {
            ReferenceContext savedContext = this.referenceContext;
            Iterator iterator = missingTypes.iterator();
            while (iterator.hasNext()) {
                try {
                    this.invalidType(location, (TypeBinding)iterator.next());
                }
                finally {
                    this.referenceContext = savedContext;
                }
            }
            return;
        }
        int id = 0x1000002;
        switch (type.problemId()) {
            case 1: {
                id = 0x1000002;
                break;
            }
            case 2: {
                id = 0x1000003;
                break;
            }
            case 3: {
                id = 0x1000004;
                break;
            }
            case 4: {
                id = 0x1000006;
                break;
            }
            case 5: {
                id = 16777413;
                break;
            }
            case 7: {
                id = 0x2000020A;
                break;
            }
            case 9: {
                id = 0x20000209;
                break;
            }
            default: {
                this.needImplementation(location);
            }
        }
        int end = location.sourceEnd;
        if (location instanceof QualifiedNameReference) {
            QualifiedNameReference ref = (QualifiedNameReference)location;
            if (this.isRecoveredName(ref.tokens)) {
                return;
            }
            if (ref.indexOfFirstFieldBinding >= 1) {
                end = (int)ref.sourcePositions[ref.indexOfFirstFieldBinding - 1];
            }
        } else if (location instanceof ParameterizedQualifiedTypeReference) {
            ParameterizedQualifiedTypeReference ref = (ParameterizedQualifiedTypeReference)location;
            if (this.isRecoveredName(ref.tokens)) {
                return;
            }
            if (type instanceof ReferenceBinding) {
                char[][] name = ((ReferenceBinding)type).compoundName;
                end = (int)ref.sourcePositions[name.length - 1];
            }
        } else if (location instanceof ArrayQualifiedTypeReference) {
            ArrayQualifiedTypeReference arrayQualifiedTypeReference = (ArrayQualifiedTypeReference)location;
            if (this.isRecoveredName(arrayQualifiedTypeReference.tokens)) {
                return;
            }
            TypeBinding leafType2 = type.leafComponentType();
            if (leafType2 instanceof ReferenceBinding) {
                char[][] name = ((ReferenceBinding)leafType2).compoundName;
                end = (int)arrayQualifiedTypeReference.sourcePositions[name.length - 1];
            } else {
                long[] positions = arrayQualifiedTypeReference.sourcePositions;
                end = (int)positions[positions.length - 1];
            }
        } else if (location instanceof QualifiedTypeReference) {
            char[][] name;
            QualifiedTypeReference ref = (QualifiedTypeReference)location;
            if (this.isRecoveredName(ref.tokens)) {
                return;
            }
            if (type instanceof ReferenceBinding && (name = ((ReferenceBinding)type).compoundName).length <= ref.sourcePositions.length) {
                end = (int)ref.sourcePositions[name.length - 1];
            }
        } else if (location instanceof ImportReference) {
            ImportReference ref = (ImportReference)location;
            if (this.isRecoveredName(ref.tokens)) {
                return;
            }
            if (type instanceof ReferenceBinding) {
                char[][] name = ((ReferenceBinding)type).compoundName;
                end = (int)ref.sourcePositions[name.length - 1];
            }
        } else if (location instanceof ArrayTypeReference) {
            ArrayTypeReference arrayTypeReference = (ArrayTypeReference)location;
            if (this.isRecoveredName(arrayTypeReference.token)) {
                return;
            }
            end = arrayTypeReference.originalSourceEnd;
        }
        this.handle(id, new String[]{new String(type.leafComponentType().readableName())}, new String[]{new String(type.leafComponentType().shortReadableName())}, location.sourceStart, end);
    }

    public void invalidTypeForCollection(Expression expression) {
        this.handle(536871493, NoArgument, NoArgument, expression.sourceStart, expression.sourceEnd);
    }

    public void invalidTypeForCollectionTarget14(Expression expression) {
        this.handle(536871494, NoArgument, NoArgument, expression.sourceStart, expression.sourceEnd);
    }

    public void invalidTypeToSynchronize(Expression expression, TypeBinding type) {
        this.handle(536871087, new String[]{new String(type.readableName())}, new String[]{new String(type.shortReadableName())}, expression.sourceStart, expression.sourceEnd);
    }

    public void invalidTypeVariableAsException(TypeBinding exceptionType, ASTNode location) {
        this.handle(16777749, new String[]{new String(exceptionType.readableName())}, new String[]{new String(exceptionType.shortReadableName())}, location.sourceStart, location.sourceEnd);
    }

    public void invalidUnaryExpression(Expression expression) {
        this.handle(1610612942, NoArgument, NoArgument, expression.sourceStart, expression.sourceEnd);
    }

    public void invalidUsageOfAnnotation(Annotation annotation) {
        this.handle(1610613332, NoArgument, NoArgument, annotation.sourceStart, annotation.sourceEnd);
    }

    public void invalidUsageOfAnnotationDeclarations(TypeDeclaration annotationTypeDeclaration) {
        this.handle(1610613333, NoArgument, NoArgument, annotationTypeDeclaration.sourceStart, annotationTypeDeclaration.sourceEnd);
    }

    public void invalidUsageOfEnumDeclarations(TypeDeclaration enumDeclaration) {
        this.handle(1610613330, NoArgument, NoArgument, enumDeclaration.sourceStart, enumDeclaration.sourceEnd);
    }

    public void invalidUsageOfForeachStatements(LocalDeclaration elementVariable, Expression collection) {
        this.handle(1610613328, NoArgument, NoArgument, elementVariable.declarationSourceStart, collection.sourceEnd);
    }

    public void invalidUsageOfStaticImports(ImportReference staticImport) {
        this.handle(1610613327, NoArgument, NoArgument, staticImport.declarationSourceStart, staticImport.declarationSourceEnd);
    }

    public void invalidUsageOfTypeArguments(TypeReference firstTypeReference, TypeReference lastTypeReference) {
        this.handle(1610613329, NoArgument, NoArgument, firstTypeReference.sourceStart, lastTypeReference.sourceEnd);
    }

    public void invalidUsageOfTypeParameters(TypeParameter firstTypeParameter, TypeParameter lastTypeParameter) {
        this.handle(1610613326, NoArgument, NoArgument, firstTypeParameter.declarationSourceStart, lastTypeParameter.declarationSourceEnd);
    }

    public void invalidUsageOfTypeParametersForAnnotationDeclaration(TypeDeclaration annotationTypeDeclaration) {
        TypeParameter[] parameters = annotationTypeDeclaration.typeParameters;
        int length = parameters.length;
        this.handle(1610613334, NoArgument, NoArgument, parameters[0].declarationSourceStart, parameters[length - 1].declarationSourceEnd);
    }

    public void invalidUsageOfTypeParametersForEnumDeclaration(TypeDeclaration annotationTypeDeclaration) {
        TypeParameter[] parameters = annotationTypeDeclaration.typeParameters;
        int length = parameters.length;
        this.handle(1610613335, NoArgument, NoArgument, parameters[0].declarationSourceStart, parameters[length - 1].declarationSourceEnd);
    }

    public void invalidUsageOfVarargs(Argument argument) {
        this.handle(1610613331, NoArgument, NoArgument, argument.type.sourceStart, argument.sourceEnd);
    }

    public void isClassPathCorrect(char[][] wellKnownTypeName, CompilationUnitDeclaration compUnitDecl, Object location) {
        this.referenceContext = compUnitDecl;
        String[] arguments = new String[]{CharOperation.toString(wellKnownTypeName)};
        int start = 0;
        int end = 0;
        if (location != null) {
            if (location instanceof InvocationSite) {
                InvocationSite site = (InvocationSite)location;
                start = site.sourceStart();
                end = site.sourceEnd();
            } else if (location instanceof ASTNode) {
                ASTNode node = (ASTNode)location;
                start = node.sourceStart();
                end = node.sourceEnd();
            }
        }
        this.handle(0x1000144, arguments, arguments, start, end);
    }

    private boolean isIdentifier(int token) {
        return token == 26;
    }

    private boolean isKeyword(int token) {
        switch (token) {
            case 13: 
            case 32: 
            case 33: 
            case 34: 
            case 35: 
            case 36: 
            case 37: 
            case 38: 
            case 39: 
            case 40: 
            case 41: 
            case 42: 
            case 43: 
            case 44: 
            case 45: 
            case 46: 
            case 54: 
            case 55: 
            case 56: 
            case 57: 
            case 58: 
            case 59: 
            case 60: 
            case 61: 
            case 62: 
            case 63: 
            case 64: 
            case 72: 
            case 73: 
            case 74: 
            case 75: 
            case 76: 
            case 77: 
            case 78: 
            case 79: 
            case 80: 
            case 81: 
            case 82: 
            case 83: 
            case 95: 
            case 96: 
            case 97: 
            case 99: 
            case 100: 
            case 101: 
            case 102: 
            case 103: 
            case 104: 
            case 105: 
            case 106: {
                return true;
            }
        }
        return false;
    }

    private boolean isLiteral(int token) {
        return Scanner.isLiteral(token);
    }

    private boolean isRecoveredName(char[] simpleName) {
        return simpleName == RecoveryScanner.FAKE_IDENTIFIER;
    }

    private boolean isRecoveredName(char[][] qualifiedName) {
        if (qualifiedName == null) {
            return false;
        }
        int i = 0;
        while (i < qualifiedName.length) {
            if (qualifiedName[i] == RecoveryScanner.FAKE_IDENTIFIER) {
                return true;
            }
            ++i;
        }
        return false;
    }

    public void javadocAmbiguousMethodReference(int sourceStart, int sourceEnd, Binding fieldBinding, int modifiers) {
        int severity = this.computeSeverity(-1610612225);
        if (severity == 256) {
            return;
        }
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            String[] arguments = new String[]{new String(fieldBinding.readableName())};
            this.handle(-1610612225, arguments, arguments, severity, sourceStart, sourceEnd);
        }
    }

    public void javadocDeprecatedField(FieldBinding field, ASTNode location, int modifiers) {
        int severity = this.computeSeverity(-1610612245);
        if (severity == 256) {
            return;
        }
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            this.handle(-1610612245, new String[]{new String(field.declaringClass.readableName()), new String(field.name)}, new String[]{new String(field.declaringClass.shortReadableName()), new String(field.name)}, severity, this.nodeSourceStart(field, location), this.nodeSourceEnd(field, location));
        }
    }

    public void javadocDeprecatedMethod(MethodBinding method, ASTNode location, int modifiers) {
        boolean isConstructor = method.isConstructor();
        int severity = this.computeSeverity(isConstructor ? -1610612241 : -1610612237);
        if (severity == 256) {
            return;
        }
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            if (isConstructor) {
                this.handle(-1610612241, new String[]{new String(method.declaringClass.readableName()), this.typesAsString(method, false)}, new String[]{new String(method.declaringClass.shortReadableName()), this.typesAsString(method, true)}, severity, location.sourceStart, location.sourceEnd);
            } else {
                this.handle(-1610612237, new String[]{new String(method.declaringClass.readableName()), new String(method.selector), this.typesAsString(method, false)}, new String[]{new String(method.declaringClass.shortReadableName()), new String(method.selector), this.typesAsString(method, true)}, severity, location.sourceStart, location.sourceEnd);
            }
        }
    }

    public void javadocDeprecatedType(TypeBinding type, ASTNode location, int modifiers) {
        this.javadocDeprecatedType(type, location, modifiers, Integer.MAX_VALUE);
    }

    public void javadocDeprecatedType(TypeBinding type, ASTNode location, int modifiers, int index) {
        if (location == null) {
            return;
        }
        int severity = this.computeSeverity(-1610612230);
        if (severity == 256) {
            return;
        }
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            if (type.isMemberType() && type instanceof ReferenceBinding && !this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, ((ReferenceBinding)type).modifiers)) {
                this.handle(-1610612271, NoArgument, NoArgument, location.sourceStart, location.sourceEnd);
            } else {
                this.handle(-1610612230, new String[]{new String(type.readableName())}, new String[]{new String(type.shortReadableName())}, severity, location.sourceStart, this.nodeSourceEnd(null, location, index));
            }
        }
    }

    public void javadocDuplicatedParamTag(char[] token, int sourceStart, int sourceEnd, int modifiers) {
        int severity = this.computeSeverity(-1610612263);
        if (severity == 256) {
            return;
        }
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            String[] arguments = new String[]{String.valueOf(token)};
            this.handle(-1610612263, arguments, arguments, severity, sourceStart, sourceEnd);
        }
    }

    public void javadocDuplicatedReturnTag(int sourceStart, int sourceEnd) {
        this.handle(-1610612260, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void javadocDuplicatedTag(char[] tagName, int sourceStart, int sourceEnd) {
        String[] arguments = new String[]{new String(tagName)};
        this.handle(-1610612272, arguments, arguments, sourceStart, sourceEnd);
    }

    public void javadocDuplicatedThrowsClassName(TypeReference typeReference, int modifiers) {
        int severity = this.computeSeverity(-1610612256);
        if (severity == 256) {
            return;
        }
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            String[] arguments = new String[]{String.valueOf(typeReference.resolvedType.sourceName())};
            this.handle(-1610612256, arguments, arguments, severity, typeReference.sourceStart, typeReference.sourceEnd);
        }
    }

    public void javadocEmptyReturnTag(int sourceStart, int sourceEnd, int modifiers) {
        int severity = this.computeSeverity(-1610612220);
        if (severity == 256) {
            return;
        }
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            String[] arguments = new String[]{new String(JavadocTagConstants.TAG_RETURN)};
            this.handle(-1610612220, arguments, arguments, sourceStart, sourceEnd);
        }
    }

    public void javadocErrorNoMethodFor(MessageSend messageSend, TypeBinding recType, TypeBinding[] params, int modifiers) {
        int id = recType.isArrayType() ? -1610612234 : -1610612236;
        int severity = this.computeSeverity(id);
        if (severity == 256) {
            return;
        }
        StringBuffer buffer = new StringBuffer();
        StringBuffer shortBuffer = new StringBuffer();
        int i = 0;
        int length = params.length;
        while (i < length) {
            if (i != 0) {
                buffer.append(", ");
                shortBuffer.append(", ");
            }
            buffer.append(new String(params[i].readableName()));
            shortBuffer.append(new String(params[i].shortReadableName()));
            ++i;
        }
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            this.handle(id, new String[]{new String(recType.readableName()), new String(messageSend.selector), buffer.toString()}, new String[]{new String(recType.shortReadableName()), new String(messageSend.selector), shortBuffer.toString()}, severity, messageSend.sourceStart, messageSend.sourceEnd);
        }
    }

    public void javadocHiddenReference(int sourceStart, int sourceEnd, Scope scope, int modifiers) {
        Scope currentScope = scope;
        while (currentScope.parent.kind != 4) {
            if (!this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, currentScope.getDeclarationModifiers())) {
                return;
            }
            currentScope = currentScope.parent;
        }
        String[] arguments = new String[]{this.options.getVisibilityString(this.options.reportInvalidJavadocTagsVisibility), this.options.getVisibilityString(modifiers)};
        this.handle(-1610612271, arguments, arguments, sourceStart, sourceEnd);
    }

    public void javadocInvalidConstructor(Statement statement, MethodBinding targetConstructor, int modifiers) {
        if (!this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            return;
        }
        int sourceStart = statement.sourceStart;
        int sourceEnd = statement.sourceEnd;
        if (statement instanceof AllocationExpression) {
            AllocationExpression allocation = (AllocationExpression)statement;
            if (allocation.enumConstant != null) {
                sourceStart = allocation.enumConstant.sourceStart;
                sourceEnd = allocation.enumConstant.sourceEnd;
            }
        }
        int id = -1610612244;
        ProblemMethodBinding problemConstructor = null;
        MethodBinding shownConstructor = null;
        switch (targetConstructor.problemId()) {
            case 1: {
                id = -1610612244;
                break;
            }
            case 2: {
                id = -1610612243;
                break;
            }
            case 3: {
                id = -1610612242;
                break;
            }
            case 10: {
                int severity = this.computeSeverity(-1610611881);
                if (severity == 256) {
                    return;
                }
                problemConstructor = (ProblemMethodBinding)targetConstructor;
                ParameterizedGenericMethodBinding substitutedConstructor = (ParameterizedGenericMethodBinding)problemConstructor.closestMatch;
                shownConstructor = substitutedConstructor.original();
                int augmentedLength = problemConstructor.parameters.length;
                TypeBinding inferredTypeArgument = problemConstructor.parameters[augmentedLength - 2];
                TypeVariableBinding typeParameter = (TypeVariableBinding)problemConstructor.parameters[augmentedLength - 1];
                TypeBinding[] invocationArguments = new TypeBinding[augmentedLength - 2];
                System.arraycopy(problemConstructor.parameters, 0, invocationArguments, 0, augmentedLength - 2);
                this.handle(-1610611881, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, false), new String(shownConstructor.declaringClass.readableName()), this.typesAsString(invocationArguments, false), new String(inferredTypeArgument.readableName()), new String(typeParameter.sourceName), this.parameterBoundAsString(typeParameter, false)}, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, true), new String(shownConstructor.declaringClass.shortReadableName()), this.typesAsString(invocationArguments, true), new String(inferredTypeArgument.shortReadableName()), new String(typeParameter.sourceName), this.parameterBoundAsString(typeParameter, true)}, severity, sourceStart, sourceEnd);
                return;
            }
            case 11: {
                problemConstructor = (ProblemMethodBinding)targetConstructor;
                shownConstructor = problemConstructor.closestMatch;
                boolean noTypeVariables = shownConstructor.typeVariables == Binding.NO_TYPE_VARIABLES;
                int severity = this.computeSeverity(noTypeVariables ? -1610611880 : -1610611879);
                if (severity == 256) {
                    return;
                }
                if (noTypeVariables) {
                    this.handle(-1610611880, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, false), new String(shownConstructor.declaringClass.readableName()), this.typesAsString(targetConstructor, false)}, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, true), new String(shownConstructor.declaringClass.shortReadableName()), this.typesAsString(targetConstructor, true)}, severity, sourceStart, sourceEnd);
                } else {
                    this.handle(-1610611879, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, false), new String(shownConstructor.declaringClass.readableName()), this.typesAsString(shownConstructor.typeVariables, false), this.typesAsString(targetConstructor, false)}, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, true), new String(shownConstructor.declaringClass.shortReadableName()), this.typesAsString(shownConstructor.typeVariables, true), this.typesAsString(targetConstructor, true)}, severity, sourceStart, sourceEnd);
                }
                return;
            }
            case 12: {
                int severity = this.computeSeverity(-1610611878);
                if (severity == 256) {
                    return;
                }
                problemConstructor = (ProblemMethodBinding)targetConstructor;
                shownConstructor = problemConstructor.closestMatch;
                this.handle(-1610611878, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, false), new String(shownConstructor.declaringClass.readableName()), this.typesAsString(((ParameterizedGenericMethodBinding)shownConstructor).typeArguments, false), this.typesAsString(targetConstructor, false)}, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, true), new String(shownConstructor.declaringClass.shortReadableName()), this.typesAsString(((ParameterizedGenericMethodBinding)shownConstructor).typeArguments, true), this.typesAsString(targetConstructor, true)}, severity, sourceStart, sourceEnd);
                return;
            }
            case 13: {
                int severity = this.computeSeverity(-1610611877);
                if (severity == 256) {
                    return;
                }
                problemConstructor = (ProblemMethodBinding)targetConstructor;
                shownConstructor = problemConstructor.closestMatch;
                this.handle(-1610611877, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, false), new String(shownConstructor.declaringClass.readableName()), this.typesAsString(targetConstructor, false)}, new String[]{new String(shownConstructor.declaringClass.sourceName()), this.typesAsString(shownConstructor, true), new String(shownConstructor.declaringClass.shortReadableName()), this.typesAsString(targetConstructor, true)}, severity, sourceStart, sourceEnd);
                return;
            }
            default: {
                this.needImplementation(statement);
            }
        }
        int severity = this.computeSeverity(id);
        if (severity == 256) {
            return;
        }
        this.handle(id, new String[]{new String(targetConstructor.declaringClass.readableName()), this.typesAsString(targetConstructor, false)}, new String[]{new String(targetConstructor.declaringClass.shortReadableName()), this.typesAsString(targetConstructor, true)}, severity, statement.sourceStart, statement.sourceEnd);
    }

    public void javadocInvalidField(FieldReference fieldRef, Binding fieldBinding, TypeBinding searchedType, int modifiers) {
        int id = -1610612248;
        switch (fieldBinding.problemId()) {
            case 1: {
                id = -1610612248;
                break;
            }
            case 2: {
                id = -1610612247;
                break;
            }
            case 3: {
                id = -1610612246;
                break;
            }
            default: {
                this.needImplementation(fieldRef);
            }
        }
        int severity = this.computeSeverity(id);
        if (severity == 256) {
            return;
        }
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            String[] arguments = new String[]{new String(fieldBinding.readableName())};
            this.handle(id, arguments, arguments, severity, fieldRef.sourceStart, fieldRef.sourceEnd);
        }
    }

    public void javadocInvalidMemberTypeQualification(int sourceStart, int sourceEnd, int modifiers) {
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            this.handle(-1610612270, NoArgument, NoArgument, sourceStart, sourceEnd);
        }
    }

    public void javadocInvalidMethod(MessageSend messageSend, MethodBinding method, int modifiers) {
        int severity;
        if (!this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            return;
        }
        ProblemMethodBinding problemMethod = null;
        MethodBinding shownMethod = null;
        int id = -1610612240;
        switch (method.problemId()) {
            case 1: {
                String parameterTypeShortNames;
                id = -1610612240;
                problemMethod = (ProblemMethodBinding)method;
                if (problemMethod.closestMatch == null) break;
                int severity2 = this.computeSeverity(-1610612235);
                if (severity2 == 256) {
                    return;
                }
                String closestParameterTypeNames = this.typesAsString(problemMethod.closestMatch, false);
                String parameterTypeNames = this.typesAsString(method, false);
                String closestParameterTypeShortNames = this.typesAsString(problemMethod.closestMatch, true);
                if (closestParameterTypeShortNames.equals(parameterTypeShortNames = this.typesAsString(method, true))) {
                    closestParameterTypeShortNames = closestParameterTypeNames;
                    parameterTypeShortNames = parameterTypeNames;
                }
                this.handle(-1610612235, new String[]{new String(problemMethod.closestMatch.declaringClass.readableName()), new String(problemMethod.closestMatch.selector), closestParameterTypeNames, parameterTypeNames}, new String[]{new String(problemMethod.closestMatch.declaringClass.shortReadableName()), new String(problemMethod.closestMatch.selector), closestParameterTypeShortNames, parameterTypeShortNames}, severity2, (int)(messageSend.nameSourcePosition >>> 32), (int)messageSend.nameSourcePosition);
                return;
            }
            case 2: {
                id = -1610612239;
                break;
            }
            case 3: {
                id = -1610612238;
                break;
            }
            case 10: {
                int severity3 = this.computeSeverity(-1610611886);
                if (severity3 == 256) {
                    return;
                }
                problemMethod = (ProblemMethodBinding)method;
                ParameterizedGenericMethodBinding substitutedMethod = (ParameterizedGenericMethodBinding)problemMethod.closestMatch;
                shownMethod = substitutedMethod.original();
                int augmentedLength = problemMethod.parameters.length;
                TypeBinding inferredTypeArgument = problemMethod.parameters[augmentedLength - 2];
                TypeVariableBinding typeParameter = (TypeVariableBinding)problemMethod.parameters[augmentedLength - 1];
                TypeBinding[] invocationArguments = new TypeBinding[augmentedLength - 2];
                System.arraycopy(problemMethod.parameters, 0, invocationArguments, 0, augmentedLength - 2);
                this.handle(-1610611886, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, false), new String(shownMethod.declaringClass.readableName()), this.typesAsString(invocationArguments, false), new String(inferredTypeArgument.readableName()), new String(typeParameter.sourceName), this.parameterBoundAsString(typeParameter, false)}, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, true), new String(shownMethod.declaringClass.shortReadableName()), this.typesAsString(invocationArguments, true), new String(inferredTypeArgument.shortReadableName()), new String(typeParameter.sourceName), this.parameterBoundAsString(typeParameter, true)}, severity3, (int)(messageSend.nameSourcePosition >>> 32), (int)messageSend.nameSourcePosition);
                return;
            }
            case 11: {
                problemMethod = (ProblemMethodBinding)method;
                shownMethod = problemMethod.closestMatch;
                boolean noTypeVariables = shownMethod.typeVariables == Binding.NO_TYPE_VARIABLES;
                int severity4 = this.computeSeverity(noTypeVariables ? -1610611885 : -1610611884);
                if (severity4 == 256) {
                    return;
                }
                if (noTypeVariables) {
                    this.handle(-1610611885, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, false), new String(shownMethod.declaringClass.readableName()), this.typesAsString(method, false)}, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, true), new String(shownMethod.declaringClass.shortReadableName()), this.typesAsString(method, true)}, severity4, (int)(messageSend.nameSourcePosition >>> 32), (int)messageSend.nameSourcePosition);
                } else {
                    this.handle(-1610611884, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, false), new String(shownMethod.declaringClass.readableName()), this.typesAsString(shownMethod.typeVariables, false), this.typesAsString(method, false)}, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, true), new String(shownMethod.declaringClass.shortReadableName()), this.typesAsString(shownMethod.typeVariables, true), this.typesAsString(method, true)}, severity4, (int)(messageSend.nameSourcePosition >>> 32), (int)messageSend.nameSourcePosition);
                }
                return;
            }
            case 12: {
                int severity5 = this.computeSeverity(-1610611883);
                if (severity5 == 256) {
                    return;
                }
                problemMethod = (ProblemMethodBinding)method;
                shownMethod = problemMethod.closestMatch;
                this.handle(-1610611883, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, false), new String(shownMethod.declaringClass.readableName()), this.typesAsString(((ParameterizedGenericMethodBinding)shownMethod).typeArguments, false), this.typesAsString(method, false)}, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, true), new String(shownMethod.declaringClass.shortReadableName()), this.typesAsString(((ParameterizedGenericMethodBinding)shownMethod).typeArguments, true), this.typesAsString(method, true)}, severity5, (int)(messageSend.nameSourcePosition >>> 32), (int)messageSend.nameSourcePosition);
                return;
            }
            case 13: {
                int severity6 = this.computeSeverity(-1610611882);
                if (severity6 == 256) {
                    return;
                }
                problemMethod = (ProblemMethodBinding)method;
                shownMethod = problemMethod.closestMatch;
                this.handle(-1610611882, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, false), new String(shownMethod.declaringClass.readableName()), this.typesAsString(method, false)}, new String[]{new String(shownMethod.selector), this.typesAsString(shownMethod, true), new String(shownMethod.declaringClass.shortReadableName()), this.typesAsString(method, true)}, severity6, (int)(messageSend.nameSourcePosition >>> 32), (int)messageSend.nameSourcePosition);
                return;
            }
            default: {
                this.needImplementation(messageSend);
            }
        }
        if ((severity = this.computeSeverity(id)) == 256) {
            return;
        }
        this.handle(id, new String[]{new String(method.declaringClass.readableName()), new String(method.selector), this.typesAsString(method, false)}, new String[]{new String(method.declaringClass.shortReadableName()), new String(method.selector), this.typesAsString(method, true)}, severity, (int)(messageSend.nameSourcePosition >>> 32), (int)messageSend.nameSourcePosition);
    }

    public void javadocInvalidParamTagName(int sourceStart, int sourceEnd) {
        this.handle(-1610612217, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void javadocInvalidParamTypeParameter(int sourceStart, int sourceEnd) {
        this.handle(-1610612267, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void javadocInvalidReference(int sourceStart, int sourceEnd) {
        this.handle(-1610612253, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void javadocInvalidSeeHref(int sourceStart, int sourceEnd) {
        this.handle(-1610612252, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void javadocInvalidSeeReferenceArgs(int sourceStart, int sourceEnd) {
        this.handle(-1610612251, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void javadocInvalidSeeUrlReference(int sourceStart, int sourceEnd) {
        this.handle(-1610612274, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void javadocInvalidTag(int sourceStart, int sourceEnd) {
        this.handle(-1610612249, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void javadocInvalidThrowsClass(int sourceStart, int sourceEnd) {
        this.handle(-1610612257, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void javadocInvalidThrowsClassName(TypeReference typeReference, int modifiers) {
        int severity = this.computeSeverity(-1610612255);
        if (severity == 256) {
            return;
        }
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            String[] arguments = new String[]{String.valueOf(typeReference.resolvedType.sourceName())};
            this.handle(-1610612255, arguments, arguments, severity, typeReference.sourceStart, typeReference.sourceEnd);
        }
    }

    public void javadocInvalidType(ASTNode location, TypeBinding type, int modifiers) {
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            int id = -1610612233;
            switch (type.problemId()) {
                case 1: {
                    id = -1610612233;
                    break;
                }
                case 2: {
                    id = -1610612232;
                    break;
                }
                case 3: {
                    id = -1610612231;
                    break;
                }
                case 4: {
                    id = -1610612229;
                    break;
                }
                case 5: {
                    id = -1610612226;
                    break;
                }
                case 7: {
                    id = -1610612268;
                    break;
                }
                default: {
                    this.needImplementation(location);
                }
            }
            int severity = this.computeSeverity(id);
            if (severity == 256) {
                return;
            }
            this.handle(id, new String[]{new String(type.readableName())}, new String[]{new String(type.shortReadableName())}, severity, location.sourceStart, location.sourceEnd);
        }
    }

    public void javadocInvalidValueReference(int sourceStart, int sourceEnd, int modifiers) {
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            this.handle(-1610612219, NoArgument, NoArgument, sourceStart, sourceEnd);
        }
    }

    public void javadocMalformedSeeReference(int sourceStart, int sourceEnd) {
        this.handle(-1610612223, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void javadocMissing(int sourceStart, int sourceEnd, int modifiers) {
        int severity = this.computeSeverity(-1610612250);
        this.javadocMissing(sourceStart, sourceEnd, severity, modifiers);
    }

    public void javadocMissing(int sourceStart, int sourceEnd, int severity, int modifiers) {
        String arg;
        boolean report;
        if (severity == 256) {
            return;
        }
        boolean overriding = (modifiers & 0x30000000) != 0;
        boolean bl = report = this.options.getSeverity(0x100000) != 256 && (!overriding || this.options.reportMissingJavadocCommentsOverriding);
        if (report && (arg = this.javadocVisibilityArgument(this.options.reportMissingJavadocCommentsVisibility, modifiers)) != null) {
            String[] arguments = new String[]{arg};
            this.handle(-1610612250, arguments, arguments, severity, sourceStart, sourceEnd);
        }
    }

    public void javadocMissingHashCharacter(int sourceStart, int sourceEnd, String ref) {
        int severity = this.computeSeverity(-1610612221);
        if (severity == 256) {
            return;
        }
        String[] arguments = new String[]{ref};
        this.handle(-1610612221, arguments, arguments, severity, sourceStart, sourceEnd);
    }

    public void javadocMissingIdentifier(int sourceStart, int sourceEnd, int modifiers) {
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            this.handle(-1610612269, NoArgument, NoArgument, sourceStart, sourceEnd);
        }
    }

    public void javadocMissingParamName(int sourceStart, int sourceEnd, int modifiers) {
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            this.handle(-1610612264, NoArgument, NoArgument, sourceStart, sourceEnd);
        }
    }

    public void javadocMissingParamTag(char[] name, int sourceStart, int sourceEnd, int modifiers) {
        boolean report;
        int severity = this.computeSeverity(-1610612265);
        if (severity == 256) {
            return;
        }
        boolean overriding = (modifiers & 0x30000000) != 0;
        boolean bl = report = this.options.getSeverity(0x200000) != 256 && (!overriding || this.options.reportMissingJavadocTagsOverriding);
        if (report && this.javadocVisibility(this.options.reportMissingJavadocTagsVisibility, modifiers)) {
            String[] arguments = new String[]{String.valueOf(name)};
            this.handle(-1610612265, arguments, arguments, severity, sourceStart, sourceEnd);
        }
    }

    public void javadocMissingReference(int sourceStart, int sourceEnd, int modifiers) {
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            this.handle(-1610612254, NoArgument, NoArgument, sourceStart, sourceEnd);
        }
    }

    public void javadocMissingReturnTag(int sourceStart, int sourceEnd, int modifiers) {
        boolean report;
        boolean overriding = (modifiers & 0x30000000) != 0;
        boolean bl = report = this.options.getSeverity(0x200000) != 256 && (!overriding || this.options.reportMissingJavadocTagsOverriding);
        if (report && this.javadocVisibility(this.options.reportMissingJavadocTagsVisibility, modifiers)) {
            this.handle(-1610612261, NoArgument, NoArgument, sourceStart, sourceEnd);
        }
    }

    public void javadocMissingTagDescription(char[] tokenName, int sourceStart, int sourceEnd, int modifiers) {
        int severity = this.computeSeverity(-1610612273);
        if (severity == 256) {
            return;
        }
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            String[] arguments = new String[]{new String(tokenName)};
            this.handle(-1610612220, arguments, arguments, sourceStart, sourceEnd);
        }
    }

    public void javadocMissingTagDescriptionAfterReference(int sourceStart, int sourceEnd, int modifiers) {
        int severity = this.computeSeverity(-1610612273);
        if (severity == 256) {
            return;
        }
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            this.handle(-1610612273, NoArgument, NoArgument, severity, sourceStart, sourceEnd);
        }
    }

    public void javadocMissingThrowsClassName(int sourceStart, int sourceEnd, int modifiers) {
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            this.handle(-1610612258, NoArgument, NoArgument, sourceStart, sourceEnd);
        }
    }

    public void javadocMissingThrowsTag(TypeReference typeRef, int modifiers) {
        boolean report;
        int severity = this.computeSeverity(-1610612259);
        if (severity == 256) {
            return;
        }
        boolean overriding = (modifiers & 0x30000000) != 0;
        boolean bl = report = this.options.getSeverity(0x200000) != 256 && (!overriding || this.options.reportMissingJavadocTagsOverriding);
        if (report && this.javadocVisibility(this.options.reportMissingJavadocTagsVisibility, modifiers)) {
            String[] arguments = new String[]{String.valueOf(typeRef.resolvedType.sourceName())};
            this.handle(-1610612259, arguments, arguments, severity, typeRef.sourceStart, typeRef.sourceEnd);
        }
    }

    public void javadocUndeclaredParamTagName(char[] token, int sourceStart, int sourceEnd, int modifiers) {
        int severity = this.computeSeverity(-1610612262);
        if (severity == 256) {
            return;
        }
        if (this.javadocVisibility(this.options.reportInvalidJavadocTagsVisibility, modifiers)) {
            String[] arguments = new String[]{String.valueOf(token)};
            this.handle(-1610612262, arguments, arguments, severity, sourceStart, sourceEnd);
        }
    }

    public void javadocUnexpectedTag(int sourceStart, int sourceEnd) {
        this.handle(-1610612266, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void javadocUnexpectedText(int sourceStart, int sourceEnd) {
        this.handle(-1610612218, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void javadocUnterminatedInlineTag(int sourceStart, int sourceEnd) {
        this.handle(-1610612224, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    private boolean javadocVisibility(int visibility, int modifiers) {
        if (modifiers < 0) {
            return true;
        }
        switch (modifiers & 7) {
            case 1: {
                return true;
            }
            case 4: {
                return visibility != 1;
            }
            case 0: {
                return visibility == 0 || visibility == 2;
            }
            case 2: {
                return visibility == 2;
            }
        }
        return true;
    }

    private String javadocVisibilityArgument(int visibility, int modifiers) {
        String argument = null;
        switch (modifiers & 7) {
            case 1: {
                argument = "public";
                break;
            }
            case 4: {
                if (visibility == 1) break;
                argument = "protected";
                break;
            }
            case 0: {
                if (visibility != 0 && visibility != 2) break;
                argument = "default";
                break;
            }
            case 2: {
                if (visibility != 2) break;
                argument = "private";
            }
        }
        return argument;
    }

    public void localVariableHiding(LocalDeclaration local, Binding hiddenVariable, boolean isSpecialArgHidingField) {
        if (hiddenVariable instanceof LocalVariableBinding) {
            int id = local instanceof Argument ? 536871006 : 536871002;
            int severity = this.computeSeverity(id);
            if (severity == 256) {
                return;
            }
            String[] arguments = new String[]{new String(local.name)};
            this.handle(id, arguments, arguments, severity, this.nodeSourceStart(hiddenVariable, local), this.nodeSourceEnd(hiddenVariable, local));
        } else if (hiddenVariable instanceof FieldBinding) {
            if (isSpecialArgHidingField && !this.options.reportSpecialParameterHidingField) {
                return;
            }
            int id = local instanceof Argument ? 536871007 : 570425435;
            int severity = this.computeSeverity(id);
            if (severity == 256) {
                return;
            }
            FieldBinding field = (FieldBinding)hiddenVariable;
            this.handle(id, new String[]{new String(local.name), new String(field.declaringClass.readableName())}, new String[]{new String(local.name), new String(field.declaringClass.shortReadableName())}, severity, local.sourceStart, local.sourceEnd);
        }
    }

    public void localVariableNonNullComparedToNull(LocalVariableBinding local, ASTNode location) {
        int severity = this.computeSeverity(536871370);
        if (severity == 256) {
            return;
        }
        String[] arguments = new String[]{new String(local.name)};
        this.handle(536871370, arguments, arguments, severity, this.nodeSourceStart(local, location), this.nodeSourceEnd(local, location));
    }

    public void localVariableNullComparedToNonNull(LocalVariableBinding local, ASTNode location) {
        int severity = this.computeSeverity(536871366);
        if (severity == 256) {
            return;
        }
        String[] arguments = new String[]{new String(local.name)};
        this.handle(536871366, arguments, arguments, severity, this.nodeSourceStart(local, location), this.nodeSourceEnd(local, location));
    }

    public void localVariableNullInstanceof(LocalVariableBinding local, ASTNode location) {
        int severity = this.computeSeverity(536871368);
        if (severity == 256) {
            return;
        }
        String[] arguments = new String[]{new String(local.name)};
        this.handle(536871368, arguments, arguments, severity, this.nodeSourceStart(local, location), this.nodeSourceEnd(local, location));
    }

    public void localVariableNullReference(LocalVariableBinding local, ASTNode location) {
        int severity = this.computeSeverity(536871363);
        if (severity == 256) {
            return;
        }
        String[] arguments = new String[]{new String(local.name)};
        this.handle(536871363, arguments, arguments, severity, this.nodeSourceStart(local, location), this.nodeSourceEnd(local, location));
    }

    public void localVariablePotentialNullReference(LocalVariableBinding local, ASTNode location) {
        int severity = this.computeSeverity(536871364);
        if (severity == 256) {
            return;
        }
        String[] arguments = new String[]{new String(local.name)};
        this.handle(536871364, arguments, arguments, severity, this.nodeSourceStart(local, location), this.nodeSourceEnd(local, location));
    }

    public void localVariableRedundantCheckOnNonNull(LocalVariableBinding local, ASTNode location) {
        int severity = this.computeSeverity(536871369);
        if (severity == 256) {
            return;
        }
        String[] arguments = new String[]{new String(local.name)};
        this.handle(536871369, arguments, arguments, severity, this.nodeSourceStart(local, location), this.nodeSourceEnd(local, location));
    }

    public void localVariableRedundantCheckOnNull(LocalVariableBinding local, ASTNode location) {
        int severity = this.computeSeverity(536871365);
        if (severity == 256) {
            return;
        }
        String[] arguments = new String[]{new String(local.name)};
        this.handle(536871365, arguments, arguments, severity, this.nodeSourceStart(local, location), this.nodeSourceEnd(local, location));
    }

    public void localVariableRedundantNullAssignment(LocalVariableBinding local, ASTNode location) {
        if ((location.bits & 8) != 0) {
            return;
        }
        int severity = this.computeSeverity(536871367);
        if (severity == 256) {
            return;
        }
        String[] arguments = new String[]{new String(local.name)};
        this.handle(536871367, arguments, arguments, severity, this.nodeSourceStart(local, location), this.nodeSourceEnd(local, location));
    }

    public void methodMustOverride(AbstractMethodDeclaration method, long complianceLevel) {
        MethodBinding binding = method.binding;
        this.handle(complianceLevel == 0x310000L ? 67109487 : 67109498, new String[]{new String(binding.selector), this.typesAsString(binding, false), new String(binding.declaringClass.readableName())}, new String[]{new String(binding.selector), this.typesAsString(binding, true), new String(binding.declaringClass.shortReadableName())}, method.sourceStart, method.sourceEnd);
    }

    public void methodNameClash(MethodBinding currentMethod, MethodBinding inheritedMethod, int severity) {
        this.handle(67109424, new String[]{new String(currentMethod.selector), this.typesAsString(currentMethod, false), new String(currentMethod.declaringClass.readableName()), this.typesAsString(inheritedMethod, false), new String(inheritedMethod.declaringClass.readableName())}, new String[]{new String(currentMethod.selector), this.typesAsString(currentMethod, true), new String(currentMethod.declaringClass.shortReadableName()), this.typesAsString(inheritedMethod, true), new String(inheritedMethod.declaringClass.shortReadableName())}, severity, currentMethod.sourceStart(), currentMethod.sourceEnd());
    }

    public void methodNeedBody(AbstractMethodDeclaration methodDecl) {
        this.handle(603979883, NoArgument, NoArgument, methodDecl.sourceStart, methodDecl.sourceEnd);
    }

    public void methodNeedingNoBody(MethodDeclaration methodDecl) {
        this.handle((methodDecl.modifiers & 0x100) != 0 ? 603979888 : 603979889, NoArgument, NoArgument, methodDecl.sourceStart, methodDecl.sourceEnd);
    }

    public void methodWithConstructorName(MethodDeclaration methodDecl) {
        this.handle(67108974, NoArgument, NoArgument, methodDecl.sourceStart, methodDecl.sourceEnd);
    }

    public void methodCanBeDeclaredStatic(MethodDeclaration methodDecl) {
        int severity = this.computeSeverity(603979897);
        if (severity == 256) {
            return;
        }
        MethodBinding method = methodDecl.binding;
        this.handle(603979897, new String[]{new String(method.declaringClass.readableName()), new String(method.selector), this.typesAsString(method, false)}, new String[]{new String(method.declaringClass.shortReadableName()), new String(method.selector), this.typesAsString(method, true)}, severity, methodDecl.sourceStart, methodDecl.sourceEnd);
    }

    public void methodCanBePotentiallyDeclaredStatic(MethodDeclaration methodDecl) {
        int severity = this.computeSeverity(603979898);
        if (severity == 256) {
            return;
        }
        MethodBinding method = methodDecl.binding;
        this.handle(603979898, new String[]{new String(method.declaringClass.readableName()), new String(method.selector), this.typesAsString(method, false)}, new String[]{new String(method.declaringClass.shortReadableName()), new String(method.selector), this.typesAsString(method, true)}, severity, methodDecl.sourceStart, methodDecl.sourceEnd);
    }

    public void missingDeprecatedAnnotationForField(FieldDeclaration field) {
        int severity = this.computeSeverity(536871540);
        if (severity == 256) {
            return;
        }
        FieldBinding binding = field.binding;
        this.handle(536871540, new String[]{new String(binding.declaringClass.readableName()), new String(binding.name)}, new String[]{new String(binding.declaringClass.shortReadableName()), new String(binding.name)}, severity, this.nodeSourceStart(binding, field), this.nodeSourceEnd(binding, field));
    }

    public void missingDeprecatedAnnotationForMethod(AbstractMethodDeclaration method) {
        int severity = this.computeSeverity(536871541);
        if (severity == 256) {
            return;
        }
        MethodBinding binding = method.binding;
        this.handle(536871541, new String[]{new String(binding.selector), this.typesAsString(binding, false), new String(binding.declaringClass.readableName())}, new String[]{new String(binding.selector), this.typesAsString(binding, true), new String(binding.declaringClass.shortReadableName())}, severity, method.sourceStart, method.sourceEnd);
    }

    public void missingDeprecatedAnnotationForType(TypeDeclaration type) {
        int severity = this.computeSeverity(536871542);
        if (severity == 256) {
            return;
        }
        SourceTypeBinding binding = type.binding;
        this.handle(536871542, new String[]{new String(((Binding)binding).readableName())}, new String[]{new String(((Binding)binding).shortReadableName())}, severity, type.sourceStart, type.sourceEnd);
    }

    public void missingEnumConstantCase(SwitchStatement switchStatement, FieldBinding enumConstant) {
        this.handle(33555193, new String[]{new String(enumConstant.declaringClass.readableName()), new String(enumConstant.name)}, new String[]{new String(enumConstant.declaringClass.shortReadableName()), new String(enumConstant.name)}, switchStatement.expression.sourceStart, switchStatement.expression.sourceEnd);
    }

    public void missingOverrideAnnotation(AbstractMethodDeclaration method) {
        int severity = this.computeSeverity(67109491);
        if (severity == 256) {
            return;
        }
        MethodBinding binding = method.binding;
        this.handle(67109491, new String[]{new String(binding.selector), this.typesAsString(binding, false), new String(binding.declaringClass.readableName())}, new String[]{new String(binding.selector), this.typesAsString(binding, true), new String(binding.declaringClass.shortReadableName())}, severity, method.sourceStart, method.sourceEnd);
    }

    public void missingOverrideAnnotationForInterfaceMethodImplementation(AbstractMethodDeclaration method) {
        int severity = this.computeSeverity(67109500);
        if (severity == 256) {
            return;
        }
        MethodBinding binding = method.binding;
        this.handle(67109500, new String[]{new String(binding.selector), this.typesAsString(binding, false), new String(binding.declaringClass.readableName())}, new String[]{new String(binding.selector), this.typesAsString(binding, true), new String(binding.declaringClass.shortReadableName())}, severity, method.sourceStart, method.sourceEnd);
    }

    public void missingReturnType(AbstractMethodDeclaration methodDecl) {
        this.handle(16777327, NoArgument, NoArgument, methodDecl.sourceStart, methodDecl.sourceEnd);
    }

    public void missingSemiColon(Expression expression) {
        this.handle(0x600000E0, NoArgument, NoArgument, expression.sourceStart, expression.sourceEnd);
    }

    public void missingSerialVersion(TypeDeclaration typeDecl) {
        String[] arguments = new String[]{new String(typeDecl.name)};
        this.handle(0x20000060, arguments, arguments, typeDecl.sourceStart, typeDecl.sourceEnd);
    }

    public void missingSynchronizedOnInheritedMethod(MethodBinding currentMethod, MethodBinding inheritedMethod) {
        this.handle(67109281, new String[]{new String(currentMethod.declaringClass.readableName()), new String(currentMethod.selector), this.typesAsString(currentMethod, false)}, new String[]{new String(currentMethod.declaringClass.shortReadableName()), new String(currentMethod.selector), this.typesAsString(currentMethod, true)}, currentMethod.sourceStart(), currentMethod.sourceEnd());
    }

    public void missingTypeInConstructor(ASTNode location, MethodBinding constructor) {
        List missingTypes = constructor.collectMissingTypes(null);
        if (missingTypes == null) {
            System.err.println("The constructor " + constructor + " is wrongly tagged as containing missing types");
            return;
        }
        TypeBinding missingType = (TypeBinding)missingTypes.get(0);
        int start = location.sourceStart;
        int end = location.sourceEnd;
        if (location instanceof QualifiedAllocationExpression) {
            QualifiedAllocationExpression qualifiedAllocation = (QualifiedAllocationExpression)location;
            if (qualifiedAllocation.anonymousType != null) {
                start = qualifiedAllocation.anonymousType.sourceStart;
                end = qualifiedAllocation.anonymousType.sourceEnd;
            }
        }
        this.handle(0x8000081, new String[]{new String(constructor.declaringClass.readableName()), this.typesAsString(constructor, false), new String(missingType.readableName())}, new String[]{new String(constructor.declaringClass.shortReadableName()), this.typesAsString(constructor, true), new String(missingType.shortReadableName())}, start, end);
    }

    public void missingTypeInMethod(MessageSend messageSend, MethodBinding method) {
        List missingTypes = method.collectMissingTypes(null);
        if (missingTypes == null) {
            System.err.println("The method " + method + " is wrongly tagged as containing missing types");
            return;
        }
        TypeBinding missingType = (TypeBinding)missingTypes.get(0);
        this.handle(67108984, new String[]{new String(method.declaringClass.readableName()), new String(method.selector), this.typesAsString(method, false), new String(missingType.readableName())}, new String[]{new String(method.declaringClass.shortReadableName()), new String(method.selector), this.typesAsString(method, true), new String(missingType.shortReadableName())}, (int)(messageSend.nameSourcePosition >>> 32), (int)messageSend.nameSourcePosition);
    }

    public void missingValueForAnnotationMember(Annotation annotation, char[] memberName) {
        String memberString = new String(memberName);
        this.handle(16777825, new String[]{new String(annotation.resolvedType.readableName()), memberString}, new String[]{new String(annotation.resolvedType.shortReadableName()), memberString}, annotation.sourceStart, annotation.sourceEnd);
    }

    public void mustDefineDimensionsOrInitializer(ArrayAllocationExpression expression) {
        this.handle(536871071, NoArgument, NoArgument, expression.sourceStart, expression.sourceEnd);
    }

    public void mustUseAStaticMethod(MessageSend messageSend, MethodBinding method) {
        this.handle(603979977, new String[]{new String(method.declaringClass.readableName()), new String(method.selector), this.typesAsString(method, false)}, new String[]{new String(method.declaringClass.shortReadableName()), new String(method.selector), this.typesAsString(method, true)}, messageSend.sourceStart, messageSend.sourceEnd);
    }

    public void nativeMethodsCannotBeStrictfp(ReferenceBinding type, AbstractMethodDeclaration methodDecl) {
        String[] arguments = new String[]{new String(type.sourceName()), new String(methodDecl.selector)};
        this.handle(67109231, arguments, arguments, methodDecl.sourceStart, methodDecl.sourceEnd);
    }

    public void needImplementation(ASTNode location) {
        this.abortDueToInternalError(Messages.abort_missingCode, location);
    }

    public void needToEmulateFieldAccess(FieldBinding field, ASTNode location, boolean isReadAccess) {
        int id = isReadAccess ? 33554622 : 33554623;
        int severity = this.computeSeverity(id);
        if (severity == 256) {
            return;
        }
        this.handle(id, new String[]{new String(field.declaringClass.readableName()), new String(field.name)}, new String[]{new String(field.declaringClass.shortReadableName()), new String(field.name)}, severity, this.nodeSourceStart(field, location), this.nodeSourceEnd(field, location));
    }

    public void needToEmulateMethodAccess(MethodBinding method, ASTNode location) {
        if (method.isConstructor()) {
            int severity = this.computeSeverity(67109057);
            if (severity == 256) {
                return;
            }
            if (method.declaringClass.isEnum()) {
                return;
            }
            this.handle(67109057, new String[]{new String(method.declaringClass.readableName()), this.typesAsString(method, false)}, new String[]{new String(method.declaringClass.shortReadableName()), this.typesAsString(method, true)}, severity, location.sourceStart, location.sourceEnd);
            return;
        }
        int severity = this.computeSeverity(0x40000C0);
        if (severity == 256) {
            return;
        }
        this.handle(0x40000C0, new String[]{new String(method.declaringClass.readableName()), new String(method.selector), this.typesAsString(method, false)}, new String[]{new String(method.declaringClass.shortReadableName()), new String(method.selector), this.typesAsString(method, true)}, severity, location.sourceStart, location.sourceEnd);
    }

    public void noAdditionalBoundAfterTypeVariable(TypeReference boundReference) {
        this.handle(16777789, new String[]{new String(boundReference.resolvedType.readableName())}, new String[]{new String(boundReference.resolvedType.shortReadableName())}, boundReference.sourceStart, boundReference.sourceEnd);
    }

    private int nodeSourceEnd(Binding field, ASTNode node) {
        return this.nodeSourceEnd(field, node, 0);
    }

    private int nodeSourceEnd(Binding field, ASTNode node, int index) {
        if (node instanceof ArrayTypeReference) {
            return ((ArrayTypeReference)node).originalSourceEnd;
        }
        if (node instanceof QualifiedNameReference) {
            QualifiedNameReference ref = (QualifiedNameReference)node;
            if (ref.binding == field) {
                if (index == 0) {
                    return (int)ref.sourcePositions[ref.indexOfFirstFieldBinding - 1];
                }
                int length = ref.sourcePositions.length;
                if (index < length) {
                    return (int)ref.sourcePositions[index];
                }
                return (int)ref.sourcePositions[0];
            }
            FieldBinding[] otherFields = ref.otherBindings;
            if (otherFields != null) {
                int offset = ref.indexOfFirstFieldBinding;
                if (index != 0) {
                    int i = 0;
                    int length = otherFields.length;
                    while (i < length) {
                        if (otherFields[i] == field && i + offset == index) {
                            return (int)ref.sourcePositions[i + offset];
                        }
                        ++i;
                    }
                } else {
                    int i = 0;
                    int length = otherFields.length;
                    while (i < length) {
                        if (otherFields[i] == field) {
                            return (int)ref.sourcePositions[i + offset];
                        }
                        ++i;
                    }
                }
            }
        } else if (node instanceof ParameterizedQualifiedTypeReference) {
            ParameterizedQualifiedTypeReference reference = (ParameterizedQualifiedTypeReference)node;
            if (index < reference.sourcePositions.length) {
                return (int)reference.sourcePositions[index];
            }
        } else {
            if (node instanceof ArrayQualifiedTypeReference) {
                ArrayQualifiedTypeReference reference = (ArrayQualifiedTypeReference)node;
                int length = reference.sourcePositions.length;
                if (index < length) {
                    return (int)reference.sourcePositions[index];
                }
                return (int)reference.sourcePositions[length - 1];
            }
            if (node instanceof QualifiedTypeReference) {
                QualifiedTypeReference reference = (QualifiedTypeReference)node;
                int length = reference.sourcePositions.length;
                if (index < length) {
                    return (int)reference.sourcePositions[index];
                }
            }
        }
        return node.sourceEnd;
    }

    private int nodeSourceStart(Binding field, ASTNode node) {
        return this.nodeSourceStart(field, node, 0);
    }

    private int nodeSourceStart(Binding field, ASTNode node, int index) {
        if (node instanceof FieldReference) {
            FieldReference fieldReference = (FieldReference)node;
            return (int)(fieldReference.nameSourcePosition >> 32);
        }
        if (node instanceof QualifiedNameReference) {
            QualifiedNameReference ref = (QualifiedNameReference)node;
            if (ref.binding == field) {
                if (index == 0) {
                    return (int)(ref.sourcePositions[ref.indexOfFirstFieldBinding - 1] >> 32);
                }
                return (int)(ref.sourcePositions[index] >> 32);
            }
            FieldBinding[] otherFields = ref.otherBindings;
            if (otherFields != null) {
                int offset = ref.indexOfFirstFieldBinding;
                if (index != 0) {
                    int i = 0;
                    int length = otherFields.length;
                    while (i < length) {
                        if (otherFields[i] == field && i + offset == index) {
                            return (int)(ref.sourcePositions[i + offset] >> 32);
                        }
                        ++i;
                    }
                } else {
                    int i = 0;
                    int length = otherFields.length;
                    while (i < length) {
                        if (otherFields[i] == field) {
                            return (int)(ref.sourcePositions[i + offset] >> 32);
                        }
                        ++i;
                    }
                }
            }
        } else if (node instanceof ParameterizedQualifiedTypeReference) {
            ParameterizedQualifiedTypeReference reference = (ParameterizedQualifiedTypeReference)node;
            return (int)(reference.sourcePositions[0] >>> 32);
        }
        return node.sourceStart;
    }

    public void noMoreAvailableSpaceForArgument(LocalVariableBinding local, ASTNode location) {
        String[] arguments = new String[]{new String(local.name)};
        this.handle(local instanceof SyntheticArgumentBinding ? 536870979 : 536870977, arguments, arguments, 159, this.nodeSourceStart(local, location), this.nodeSourceEnd(local, location));
    }

    public void noMoreAvailableSpaceForConstant(TypeDeclaration typeDeclaration) {
        this.handle(536871343, new String[]{new String(typeDeclaration.binding.readableName())}, new String[]{new String(typeDeclaration.binding.shortReadableName())}, 159, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void noMoreAvailableSpaceForLocal(LocalVariableBinding local, ASTNode location) {
        String[] arguments = new String[]{new String(local.name)};
        this.handle(0x20000042, arguments, arguments, 159, this.nodeSourceStart(local, location), this.nodeSourceEnd(local, location));
    }

    public void noMoreAvailableSpaceInConstantPool(TypeDeclaration typeDeclaration) {
        this.handle(536871342, new String[]{new String(typeDeclaration.binding.readableName())}, new String[]{new String(typeDeclaration.binding.shortReadableName())}, 159, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void nonExternalizedStringLiteral(ASTNode location) {
        this.handle(536871173, NoArgument, NoArgument, location.sourceStart, location.sourceEnd);
    }

    public void nonGenericTypeCannotBeParameterized(int index, ASTNode location, TypeBinding type, TypeBinding[] argumentTypes) {
        if (location == null) {
            this.handle(16777740, new String[]{new String(type.readableName()), this.typesAsString(argumentTypes, false)}, new String[]{new String(type.shortReadableName()), this.typesAsString(argumentTypes, true)}, 131, 0, 0);
            return;
        }
        this.handle(16777740, new String[]{new String(type.readableName()), this.typesAsString(argumentTypes, false)}, new String[]{new String(type.shortReadableName()), this.typesAsString(argumentTypes, true)}, this.nodeSourceStart(null, location), this.nodeSourceEnd(null, location, index));
    }

    public void nonStaticAccessToStaticField(ASTNode location, FieldBinding field) {
        this.nonStaticAccessToStaticField(location, field, -1);
    }

    public void nonStaticAccessToStaticField(ASTNode location, FieldBinding field, int index) {
        int severity = this.computeSeverity(570425420);
        if (severity == 256) {
            return;
        }
        this.handle(570425420, new String[]{new String(field.declaringClass.readableName()), new String(field.name)}, new String[]{new String(field.declaringClass.shortReadableName()), new String(field.name)}, severity, this.nodeSourceStart(field, location, index), this.nodeSourceEnd(field, location, index));
    }

    public void nonStaticAccessToStaticMethod(ASTNode location, MethodBinding method) {
        this.handle(603979893, new String[]{new String(method.declaringClass.readableName()), new String(method.selector), this.typesAsString(method, false)}, new String[]{new String(method.declaringClass.shortReadableName()), new String(method.selector), this.typesAsString(method, true)}, location.sourceStart, location.sourceEnd);
    }

    public void nonStaticContextForEnumMemberType(SourceTypeBinding type) {
        String[] arguments = new String[]{new String(type.sourceName())};
        this.handle(0x20000020, arguments, arguments, type.sourceStart(), type.sourceEnd());
    }

    public void noSuchEnclosingInstance(TypeBinding targetType, ASTNode location, boolean isConstructorCall) {
        int id = isConstructorCall ? 536870940 : (location instanceof ExplicitConstructorCall && ((ExplicitConstructorCall)location).accessMode == 1 ? 0x1000014 : (location instanceof AllocationExpression && (((AllocationExpression)location).binding.declaringClass.isMemberType() || ((AllocationExpression)location).binding.declaringClass.isAnonymousType() && ((AllocationExpression)location).binding.declaringClass.superclass().isMemberType()) ? 0x1000015 : 0x1000016));
        this.handle(id, new String[]{new String(targetType.readableName())}, new String[]{new String(targetType.shortReadableName())}, location.sourceStart, location.sourceEnd);
    }

    public void notCompatibleTypesError(EqualExpression expression, TypeBinding leftType, TypeBinding rightType) {
        String rightShortName;
        String leftName = new String(leftType.readableName());
        String rightName = new String(rightType.readableName());
        String leftShortName = new String(leftType.shortReadableName());
        if (leftShortName.equals(rightShortName = new String(rightType.shortReadableName()))) {
            leftShortName = leftName;
            rightShortName = rightName;
        }
        this.handle(0x100000F, new String[]{leftName, rightName}, new String[]{leftShortName, rightShortName}, expression.sourceStart, expression.sourceEnd);
    }

    public void notCompatibleTypesError(InstanceOfExpression expression, TypeBinding leftType, TypeBinding rightType) {
        String rightShortName;
        String leftName = new String(leftType.readableName());
        String rightName = new String(rightType.readableName());
        String leftShortName = new String(leftType.shortReadableName());
        if (leftShortName.equals(rightShortName = new String(rightType.shortReadableName()))) {
            leftShortName = leftName;
            rightShortName = rightName;
        }
        this.handle(0x1000010, new String[]{leftName, rightName}, new String[]{leftShortName, rightShortName}, expression.sourceStart, expression.sourceEnd);
    }

    public void notCompatibleTypesErrorInForeach(Expression expression, TypeBinding leftType, TypeBinding rightType) {
        String rightShortName;
        String leftName = new String(leftType.readableName());
        String rightName = new String(rightType.readableName());
        String leftShortName = new String(leftType.shortReadableName());
        if (leftShortName.equals(rightShortName = new String(rightType.shortReadableName()))) {
            leftShortName = leftName;
            rightShortName = rightName;
        }
        this.handle(16777796, new String[]{leftName, rightName}, new String[]{leftShortName, rightShortName}, expression.sourceStart, expression.sourceEnd);
    }

    public void objectCannotBeGeneric(TypeDeclaration typeDecl) {
        this.handle(0x2000020B, NoArgument, NoArgument, typeDecl.typeParameters[0].sourceStart, typeDecl.typeParameters[typeDecl.typeParameters.length - 1].sourceEnd);
    }

    public void objectCannotHaveSuperTypes(SourceTypeBinding type) {
        this.handle(536871241, NoArgument, NoArgument, type.sourceStart(), type.sourceEnd());
    }

    public void objectMustBeClass(SourceTypeBinding type) {
        this.handle(536871242, NoArgument, NoArgument, type.sourceStart(), type.sourceEnd());
    }

    public void operatorOnlyValidOnNumericType(CompoundAssignment assignment, TypeBinding leftType, TypeBinding rightType) {
        String rightShortName;
        String leftName = new String(leftType.readableName());
        String rightName = new String(rightType.readableName());
        String leftShortName = new String(leftType.shortReadableName());
        if (leftShortName.equals(rightShortName = new String(rightType.shortReadableName()))) {
            leftShortName = leftName;
            rightShortName = rightName;
        }
        this.handle(0x1000011, new String[]{leftName, rightName}, new String[]{leftShortName, rightShortName}, assignment.sourceStart, assignment.sourceEnd);
    }

    public void overridesDeprecatedMethod(MethodBinding localMethod, MethodBinding inheritedMethod) {
        this.handle(67109276, new String[]{new String(CharOperation.concat(localMethod.declaringClass.readableName(), localMethod.readableName(), '.')), new String(inheritedMethod.declaringClass.readableName())}, new String[]{new String(CharOperation.concat(localMethod.declaringClass.shortReadableName(), localMethod.shortReadableName(), '.')), new String(inheritedMethod.declaringClass.shortReadableName())}, localMethod.sourceStart(), localMethod.sourceEnd());
    }

    public void overridesMethodWithoutSuperInvocation(MethodBinding localMethod) {
        this.handle(67109280, new String[]{new String(CharOperation.concat(localMethod.declaringClass.readableName(), localMethod.readableName(), '.'))}, new String[]{new String(CharOperation.concat(localMethod.declaringClass.shortReadableName(), localMethod.shortReadableName(), '.'))}, localMethod.sourceStart(), localMethod.sourceEnd());
    }

    public void overridesPackageDefaultMethod(MethodBinding localMethod, MethodBinding inheritedMethod) {
        this.handle(67109274, new String[]{new String(CharOperation.concat(localMethod.declaringClass.readableName(), localMethod.readableName(), '.')), new String(inheritedMethod.declaringClass.readableName())}, new String[]{new String(CharOperation.concat(localMethod.declaringClass.shortReadableName(), localMethod.shortReadableName(), '.')), new String(inheritedMethod.declaringClass.shortReadableName())}, localMethod.sourceStart(), localMethod.sourceEnd());
    }

    public void packageCollidesWithType(CompilationUnitDeclaration compUnitDecl) {
        String[] arguments = new String[]{CharOperation.toString(compUnitDecl.currentPackage.tokens)};
        this.handle(0x1000141, arguments, arguments, compUnitDecl.currentPackage.sourceStart, compUnitDecl.currentPackage.sourceEnd);
    }

    public void packageIsNotExpectedPackage(CompilationUnitDeclaration compUnitDecl) {
        String[] arguments = new String[]{CharOperation.toString(compUnitDecl.compilationResult.compilationUnit.getPackageName()), compUnitDecl.currentPackage == null ? "" : CharOperation.toString(compUnitDecl.currentPackage.tokens)};
        this.handle(536871240, arguments, arguments, compUnitDecl.currentPackage == null ? 0 : compUnitDecl.currentPackage.sourceStart, compUnitDecl.currentPackage == null ? 0 : compUnitDecl.currentPackage.sourceEnd);
    }

    public void parameterAssignment(LocalVariableBinding local, ASTNode location) {
        int severity = this.computeSeverity(536870971);
        if (severity == 256) {
            return;
        }
        String[] arguments = new String[]{new String(local.readableName())};
        this.handle(536870971, arguments, arguments, severity, this.nodeSourceStart(local, location), this.nodeSourceEnd(local, location));
    }

    private String parameterBoundAsString(TypeVariableBinding typeVariable, boolean makeShort) {
        int length;
        StringBuffer nameBuffer = new StringBuffer(10);
        if (typeVariable.firstBound == typeVariable.superclass) {
            nameBuffer.append(makeShort ? typeVariable.superclass.shortReadableName() : typeVariable.superclass.readableName());
        }
        if ((length = typeVariable.superInterfaces.length) > 0) {
            int i = 0;
            while (i < length) {
                if (i > 0 || typeVariable.firstBound == typeVariable.superclass) {
                    nameBuffer.append(" & ");
                }
                nameBuffer.append(makeShort ? typeVariable.superInterfaces[i].shortReadableName() : typeVariable.superInterfaces[i].readableName());
                ++i;
            }
        }
        return nameBuffer.toString();
    }

    public void parameterizedMemberTypeMissingArguments(ASTNode location, TypeBinding type, int index) {
        if (location == null) {
            this.handle(16777778, new String[]{new String(type.readableName())}, new String[]{new String(type.shortReadableName())}, 131, 0, 0);
            return;
        }
        this.handle(16777778, new String[]{new String(type.readableName())}, new String[]{new String(type.shortReadableName())}, location.sourceStart, this.nodeSourceEnd(null, location, index));
    }

    public void parseError(int startPosition, int endPosition, int currentToken, char[] currentTokenSource, String errorTokenName, String[] possibleTokens) {
        if (possibleTokens.length == 0) {
            if (this.isKeyword(currentToken)) {
                String[] arguments = new String[]{new String(currentTokenSource)};
                this.handle(1610612946, arguments, arguments, startPosition, endPosition);
                return;
            }
            String[] arguments = new String[]{errorTokenName};
            this.handle(1610612941, arguments, arguments, startPosition, endPosition);
            return;
        }
        StringBuffer list = new StringBuffer(20);
        int i = 0;
        int max = possibleTokens.length;
        while (i < max) {
            if (i > 0) {
                list.append(", ");
            }
            list.append('\"');
            list.append(possibleTokens[i]);
            list.append('\"');
            ++i;
        }
        if (this.isKeyword(currentToken)) {
            String[] arguments = new String[]{new String(currentTokenSource), list.toString()};
            this.handle(1610612945, arguments, arguments, startPosition, endPosition);
            return;
        }
        if (this.isLiteral(currentToken) || this.isIdentifier(currentToken)) {
            errorTokenName = new String(currentTokenSource);
        }
        String[] arguments = new String[]{errorTokenName, list.toString()};
        this.handle(0x600000CC, arguments, arguments, startPosition, endPosition);
    }

    public void parseErrorDeleteToken(int start, int end, int currentKind, char[] errorTokenSource, String errorTokenName) {
        this.syntaxError(1610612968, start, end, currentKind, errorTokenSource, errorTokenName, null);
    }

    public void parseErrorDeleteTokens(int start, int end) {
        this.handle(1610612969, NoArgument, NoArgument, start, end);
    }

    public void parseErrorInsertAfterToken(int start, int end, int currentKind, char[] errorTokenSource, String errorTokenName, String expectedToken) {
        this.syntaxError(1610612967, start, end, currentKind, errorTokenSource, errorTokenName, expectedToken);
    }

    public void parseErrorInsertBeforeToken(int start, int end, int currentKind, char[] errorTokenSource, String errorTokenName, String expectedToken) {
        this.syntaxError(0x600000E6, start, end, currentKind, errorTokenSource, errorTokenName, expectedToken);
    }

    public void parseErrorInsertToComplete(int start, int end, String inserted, String completed) {
        String[] arguments = new String[]{inserted, completed};
        this.handle(0x600000F0, arguments, arguments, start, end);
    }

    public void parseErrorInsertToCompletePhrase(int start, int end, String inserted) {
        String[] arguments = new String[]{inserted};
        this.handle(1610612978, arguments, arguments, start, end);
    }

    public void parseErrorInsertToCompleteScope(int start, int end, String inserted) {
        String[] arguments = new String[]{inserted};
        this.handle(1610612977, arguments, arguments, start, end);
    }

    public void parseErrorInvalidToken(int start, int end, int currentKind, char[] errorTokenSource, String errorTokenName, String expectedToken) {
        this.syntaxError(1610612971, start, end, currentKind, errorTokenSource, errorTokenName, expectedToken);
    }

    public void parseErrorMergeTokens(int start, int end, String expectedToken) {
        String[] arguments = new String[]{expectedToken};
        this.handle(1610612970, arguments, arguments, start, end);
    }

    public void parseErrorMisplacedConstruct(int start, int end) {
        this.handle(1610612972, NoArgument, NoArgument, start, end);
    }

    public void parseErrorNoSuggestion(int start, int end, int currentKind, char[] errorTokenSource, String errorTokenName) {
        this.syntaxError(1610612941, start, end, currentKind, errorTokenSource, errorTokenName, null);
    }

    public void parseErrorNoSuggestionForTokens(int start, int end) {
        this.handle(0x600000EE, NoArgument, NoArgument, start, end);
    }

    public void parseErrorReplaceToken(int start, int end, int currentKind, char[] errorTokenSource, String errorTokenName, String expectedToken) {
        this.syntaxError(0x600000CC, start, end, currentKind, errorTokenSource, errorTokenName, expectedToken);
    }

    public void parseErrorReplaceTokens(int start, int end, String expectedToken) {
        String[] arguments = new String[]{expectedToken};
        this.handle(1610612973, arguments, arguments, start, end);
    }

    public void parseErrorUnexpectedEnd(int start, int end) {
        String[] arguments = this.referenceContext instanceof ConstructorDeclaration ? new String[]{Messages.parser_endOfConstructor} : (this.referenceContext instanceof MethodDeclaration ? new String[]{Messages.parser_endOfMethod} : (this.referenceContext instanceof TypeDeclaration ? new String[]{Messages.parser_endOfInitializer} : new String[]{Messages.parser_endOfFile}));
        this.handle(1610612975, arguments, arguments, start, end);
    }

    public void possibleAccidentalBooleanAssignment(Assignment assignment) {
        this.handle(536871091, NoArgument, NoArgument, assignment.sourceStart, assignment.sourceEnd);
    }

    public void possibleFallThroughCase(CaseStatement caseStatement) {
        this.handle(0x200000C2, NoArgument, NoArgument, caseStatement.sourceStart, caseStatement.sourceEnd);
    }

    public void publicClassMustMatchFileName(CompilationUnitDeclaration compUnitDecl, TypeDeclaration typeDecl) {
        this.referenceContext = typeDecl;
        String[] arguments = new String[]{new String(compUnitDecl.getFileName()), new String(typeDecl.name)};
        this.handle(16777541, arguments, arguments, typeDecl.sourceStart, typeDecl.sourceEnd, compUnitDecl.compilationResult);
    }

    public void rawMemberTypeCannotBeParameterized(ASTNode location, ReferenceBinding type, TypeBinding[] argumentTypes) {
        if (location == null) {
            this.handle(16777777, new String[]{new String(type.readableName()), this.typesAsString(argumentTypes, false), new String(type.enclosingType().readableName())}, new String[]{new String(type.shortReadableName()), this.typesAsString(argumentTypes, true), new String(type.enclosingType().shortReadableName())}, 131, 0, 0);
            return;
        }
        this.handle(16777777, new String[]{new String(type.readableName()), this.typesAsString(argumentTypes, false), new String(type.enclosingType().readableName())}, new String[]{new String(type.shortReadableName()), this.typesAsString(argumentTypes, true), new String(type.enclosingType().shortReadableName())}, location.sourceStart, location.sourceEnd);
    }

    public void rawTypeReference(ASTNode location, TypeBinding type) {
        if (this.options.sourceLevel < 0x310000L) {
            return;
        }
        type = type.leafComponentType();
        this.handle(16777788, new String[]{new String(type.readableName()), new String(type.erasure().readableName())}, new String[]{new String(type.shortReadableName()), new String(type.erasure().shortReadableName())}, location.sourceStart, this.nodeSourceEnd(null, location, Integer.MAX_VALUE));
    }

    public void recursiveConstructorInvocation(ExplicitConstructorCall constructorCall) {
        this.handle(0x8000089, new String[]{new String(constructorCall.binding.declaringClass.readableName()), this.typesAsString(constructorCall.binding, false)}, new String[]{new String(constructorCall.binding.declaringClass.shortReadableName()), this.typesAsString(constructorCall.binding, true)}, constructorCall.sourceStart, constructorCall.sourceEnd);
    }

    public void redefineArgument(Argument arg) {
        String[] arguments = new String[]{new String(arg.name)};
        this.handle(536870968, arguments, arguments, arg.sourceStart, arg.sourceEnd);
    }

    public void redefineLocal(LocalDeclaration localDecl) {
        String[] arguments = new String[]{new String(localDecl.name)};
        this.handle(536870967, arguments, arguments, localDecl.sourceStart, localDecl.sourceEnd);
    }

    public void redundantSuperInterface(SourceTypeBinding type, TypeReference reference, ReferenceBinding superinterface, ReferenceBinding declaringType) {
        int severity = this.computeSeverity(16777547);
        if (severity != 256) {
            this.handle(16777547, new String[]{new String(superinterface.readableName()), new String(type.readableName()), new String(declaringType.readableName())}, new String[]{new String(superinterface.shortReadableName()), new String(type.shortReadableName()), new String(declaringType.shortReadableName())}, severity, reference.sourceStart, reference.sourceEnd);
        }
    }

    public void referenceMustBeArrayTypeAt(TypeBinding arrayType, ArrayReference arrayRef) {
        this.handle(536871062, new String[]{new String(arrayType.readableName())}, new String[]{new String(arrayType.shortReadableName())}, arrayRef.sourceStart, arrayRef.sourceEnd);
    }

    public void reset() {
        this.positionScanner = null;
    }

    public void resourceHasToImplementAutoCloseable(TypeBinding binding, TypeReference typeReference) {
        if (this.options.sourceLevel < 0x330000L) {
            return;
        }
        this.handle(16778087, new String[]{new String(binding.readableName())}, new String[]{new String(binding.shortReadableName())}, typeReference.sourceStart, typeReference.sourceEnd);
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private int retrieveClosingAngleBracketPosition(int start) {
        if (this.referenceContext == null) {
            return start;
        }
        CompilationResult compilationResult = this.referenceContext.compilationResult();
        if (compilationResult == null) {
            return start;
        }
        ICompilationUnit compilationUnit = compilationResult.getCompilationUnit();
        if (compilationUnit == null) {
            return start;
        }
        char[] contents = compilationUnit.getContents();
        if (contents.length == 0) {
            return start;
        }
        if (this.positionScanner == null) {
            this.positionScanner = new Scanner(false, false, false, this.options.sourceLevel, this.options.complianceLevel, null, null, false);
            this.positionScanner.returnOnlyGreater = true;
        }
        this.positionScanner.setSource(contents);
        this.positionScanner.resetTo(start, contents.length);
        int end = start;
        int count = 0;
        try {
            int token;
            while ((token = this.positionScanner.getNextToken()) != 69) {
                switch (token) {
                    case 7: {
                        ++count;
                        break;
                    }
                    case 11: {
                        if (--count != 0) break;
                        return this.positionScanner.currentPosition - 1;
                    }
                    case 68: {
                        return end;
                    }
                }
            }
            return end;
        }
        catch (InvalidInputException invalidInputException) {}
        return end;
    }

    private int retrieveEndingPositionAfterOpeningParenthesis(int sourceStart, int sourceEnd, int numberOfParen) {
        if (this.referenceContext == null) {
            return sourceEnd;
        }
        CompilationResult compilationResult = this.referenceContext.compilationResult();
        if (compilationResult == null) {
            return sourceEnd;
        }
        ICompilationUnit compilationUnit = compilationResult.getCompilationUnit();
        if (compilationUnit == null) {
            return sourceEnd;
        }
        char[] contents = compilationUnit.getContents();
        if (contents.length == 0) {
            return sourceEnd;
        }
        if (this.positionScanner == null) {
            this.positionScanner = new Scanner(false, false, false, this.options.sourceLevel, this.options.complianceLevel, null, null, false);
        }
        this.positionScanner.setSource(contents);
        this.positionScanner.resetTo(sourceStart, sourceEnd);
        try {
            int token;
            int previousSourceEnd = sourceEnd;
            while ((token = this.positionScanner.getNextToken()) != 69) {
                switch (token) {
                    case 28: {
                        return previousSourceEnd;
                    }
                }
                previousSourceEnd = this.positionScanner.currentPosition - 1;
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return sourceEnd;
    }

    private int retrieveStartingPositionAfterOpeningParenthesis(int sourceStart, int sourceEnd, int numberOfParen) {
        if (this.referenceContext == null) {
            return sourceStart;
        }
        CompilationResult compilationResult = this.referenceContext.compilationResult();
        if (compilationResult == null) {
            return sourceStart;
        }
        ICompilationUnit compilationUnit = compilationResult.getCompilationUnit();
        if (compilationUnit == null) {
            return sourceStart;
        }
        char[] contents = compilationUnit.getContents();
        if (contents.length == 0) {
            return sourceStart;
        }
        if (this.positionScanner == null) {
            this.positionScanner = new Scanner(false, false, false, this.options.sourceLevel, this.options.complianceLevel, null, null, false);
        }
        this.positionScanner.setSource(contents);
        this.positionScanner.resetTo(sourceStart, sourceEnd);
        int count = 0;
        try {
            int token;
            while ((token = this.positionScanner.getNextToken()) != 69) {
                switch (token) {
                    case 29: {
                        if (++count != numberOfParen) break;
                        this.positionScanner.getNextToken();
                        return this.positionScanner.startPosition;
                    }
                }
            }
        }
        catch (InvalidInputException invalidInputException) {}
        return sourceStart;
    }

    public void returnTypeCannotBeVoidArray(MethodDeclaration methodDecl) {
        this.handle(536870966, NoArgument, NoArgument, methodDecl.returnType.sourceStart, methodDecl.returnType.sourceEnd);
    }

    public void scannerError(Parser parser, String errorTokenName) {
        String[] stringArray;
        char[] source;
        Scanner scanner = parser.scanner;
        int flag = 1610612941;
        int startPos = scanner.startPosition;
        int endPos = scanner.currentPosition - 1;
        if (errorTokenName.equals("End_Of_Source")) {
            flag = 1610612986;
        } else if (errorTokenName.equals("Invalid_Hexa_Literal")) {
            flag = 1610612987;
        } else if (errorTokenName.equals("Illegal_Hexa_Literal")) {
            flag = 1610613006;
        } else if (errorTokenName.equals("Invalid_Octal_Literal")) {
            flag = 1610612988;
        } else if (errorTokenName.equals("Invalid_Character_Constant")) {
            flag = 1610612989;
        } else if (errorTokenName.equals("Invalid_Escape")) {
            flag = 1610612990;
        } else if (errorTokenName.equals("Invalid_Unicode_Escape")) {
            flag = 0x60000100;
            int checkPos = scanner.currentPosition - 1;
            source = scanner.source;
            if (checkPos >= source.length) {
                checkPos = source.length - 1;
            }
            while (checkPos >= startPos) {
                if (source[checkPos] == '\\') break;
                --checkPos;
            }
            startPos = checkPos;
        } else if (errorTokenName.equals("Invalid_Low_Surrogate")) {
            flag = 1610612999;
        } else if (errorTokenName.equals("Invalid_High_Surrogate")) {
            flag = 1610613000;
            source = scanner.source;
            int checkPos = scanner.startPosition + 1;
            while (checkPos <= endPos) {
                if (source[checkPos] == '\\') break;
                ++checkPos;
            }
            endPos = checkPos - 1;
        } else if (errorTokenName.equals("Invalid_Float_Literal")) {
            flag = 0x60000101;
        } else if (errorTokenName.equals("Unterminated_String")) {
            flag = 1610612995;
        } else if (errorTokenName.equals("Unterminated_Comment")) {
            flag = 1610612996;
        } else if (errorTokenName.equals("Invalid_Char_In_String")) {
            flag = 1610612995;
        } else if (errorTokenName.equals("Invalid_Digit")) {
            flag = 0x60000106;
        } else if (errorTokenName.equals("Invalid_Binary_Literal")) {
            flag = 1610613002;
        } else if (errorTokenName.equals("Binary_Literal_Not_Below_17")) {
            flag = 1610613003;
        } else if (errorTokenName.equals("Invalid_Underscore")) {
            flag = 1610613004;
        } else if (errorTokenName.equals("Underscores_In_Literals_Not_Below_17")) {
            flag = 1610613005;
        }
        if (flag == 1610612941) {
            String[] stringArray2 = new String[1];
            stringArray = stringArray2;
            stringArray2[0] = errorTokenName;
        } else {
            stringArray = NoArgument;
        }
        String[] arguments = stringArray;
        this.handle(flag, arguments, arguments, startPos, endPos, parser.compilationUnit.compilationResult);
    }

    public void shouldImplementHashcode(SourceTypeBinding type) {
        this.handle(16777548, new String[]{new String(type.readableName())}, new String[]{new String(type.shortReadableName())}, type.sourceStart(), type.sourceEnd());
    }

    public void shouldReturn(TypeBinding returnType, ASTNode location) {
        this.handle(603979884, new String[]{new String(returnType.readableName())}, new String[]{new String(returnType.shortReadableName())}, location.sourceStart, location.sourceEnd);
    }

    public void signalNoImplicitStringConversionForCharArrayExpression(Expression expression) {
        this.handle(536871063, NoArgument, NoArgument, expression.sourceStart, expression.sourceEnd);
    }

    public void staticAndInstanceConflict(MethodBinding currentMethod, MethodBinding inheritedMethod) {
        if (currentMethod.isStatic()) {
            this.handle(67109271, new String[]{new String(inheritedMethod.declaringClass.readableName())}, new String[]{new String(inheritedMethod.declaringClass.shortReadableName())}, currentMethod.sourceStart(), currentMethod.sourceEnd());
        } else {
            this.handle(67109270, new String[]{new String(inheritedMethod.declaringClass.readableName())}, new String[]{new String(inheritedMethod.declaringClass.shortReadableName())}, currentMethod.sourceStart(), currentMethod.sourceEnd());
        }
    }

    public void staticFieldAccessToNonStaticVariable(ASTNode location, FieldBinding field) {
        String[] arguments = new String[]{new String(field.readableName())};
        this.handle(33554506, arguments, arguments, this.nodeSourceStart(field, location), this.nodeSourceEnd(field, location));
    }

    public void staticInheritedMethodConflicts(SourceTypeBinding type, MethodBinding concreteMethod, MethodBinding[] abstractMethods) {
        this.handle(67109272, new String[]{new String(concreteMethod.readableName()), new String(abstractMethods[0].declaringClass.readableName())}, new String[]{new String(concreteMethod.readableName()), new String(abstractMethods[0].declaringClass.shortReadableName())}, type.sourceStart(), type.sourceEnd());
    }

    public void staticMemberOfParameterizedType(ASTNode location, ReferenceBinding type, int index) {
        if (location == null) {
            this.handle(16777779, new String[]{new String(type.readableName()), new String(type.enclosingType().readableName())}, new String[]{new String(type.shortReadableName()), new String(type.enclosingType().shortReadableName())}, 131, 0, 0);
            return;
        }
        this.handle(16777779, new String[]{new String(type.readableName()), new String(type.enclosingType().readableName())}, new String[]{new String(type.shortReadableName()), new String(type.enclosingType().shortReadableName())}, location.sourceStart, this.nodeSourceEnd(null, location, index));
    }

    public void stringConstantIsExceedingUtf8Limit(ASTNode location) {
        this.handle(536871064, NoArgument, NoArgument, location.sourceStart, location.sourceEnd);
    }

    public void superclassMustBeAClass(SourceTypeBinding type, TypeReference superclassRef, ReferenceBinding superType) {
        this.handle(16777528, new String[]{new String(superType.readableName()), new String(type.sourceName())}, new String[]{new String(superType.shortReadableName()), new String(type.sourceName())}, superclassRef.sourceStart, superclassRef.sourceEnd);
    }

    public void superfluousSemicolon(int sourceStart, int sourceEnd) {
        this.handle(536871092, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void superinterfaceMustBeAnInterface(SourceTypeBinding type, TypeReference superInterfaceRef, ReferenceBinding superType) {
        this.handle(16777531, new String[]{new String(superType.readableName()), new String(type.sourceName())}, new String[]{new String(superType.shortReadableName()), new String(type.sourceName())}, superInterfaceRef.sourceStart, superInterfaceRef.sourceEnd);
    }

    public void superinterfacesCollide(TypeBinding type, ASTNode decl, TypeBinding superType, TypeBinding inheritedSuperType) {
        this.handle(16777755, new String[]{new String(superType.readableName()), new String(inheritedSuperType.readableName()), new String(type.sourceName())}, new String[]{new String(superType.shortReadableName()), new String(inheritedSuperType.shortReadableName()), new String(type.sourceName())}, decl.sourceStart, decl.sourceEnd);
    }

    public void superTypeCannotUseWildcard(SourceTypeBinding type, TypeReference superclass, TypeBinding superTypeBinding) {
        String name = new String(type.sourceName());
        String superTypeFullName = new String(superTypeBinding.readableName());
        String superTypeShortName = new String(superTypeBinding.shortReadableName());
        if (superTypeShortName.equals(name)) {
            superTypeShortName = superTypeFullName;
        }
        this.handle(16777772, new String[]{superTypeFullName, name}, new String[]{superTypeShortName, name}, superclass.sourceStart, superclass.sourceEnd);
    }

    private void syntaxError(int id, int startPosition, int endPosition, int currentKind, char[] currentTokenSource, String errorTokenName, String expectedToken) {
        String eTokenName = this.isKeyword(currentKind) || this.isLiteral(currentKind) || this.isIdentifier(currentKind) ? new String(currentTokenSource) : errorTokenName;
        String[] arguments = expectedToken != null ? new String[]{eTokenName, expectedToken} : new String[]{eTokenName};
        this.handle(id, arguments, arguments, startPosition, endPosition);
    }

    public void task(String tag, String message, String priority, int start, int end) {
        this.handle(536871362, new String[]{tag, message, priority}, new String[]{tag, message, priority}, start, end);
    }

    public void tooManyDimensions(ASTNode expression) {
        this.handle(0x20000044, NoArgument, NoArgument, expression.sourceStart, expression.sourceEnd);
    }

    public void tooManyFields(TypeDeclaration typeDeclaration) {
        this.handle(536871344, new String[]{new String(typeDeclaration.binding.readableName())}, new String[]{new String(typeDeclaration.binding.shortReadableName())}, 159, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void tooManyMethods(TypeDeclaration typeDeclaration) {
        this.handle(536871345, new String[]{new String(typeDeclaration.binding.readableName())}, new String[]{new String(typeDeclaration.binding.shortReadableName())}, 159, typeDeclaration.sourceStart, typeDeclaration.sourceEnd);
    }

    public void tooManyParametersForSyntheticMethod(AbstractMethodDeclaration method) {
        MethodBinding binding = method.binding;
        String selector = null;
        selector = binding.isConstructor() ? new String(binding.declaringClass.sourceName()) : new String(method.selector);
        this.handle(536871346, new String[]{selector, this.typesAsString(binding, false), new String(binding.declaringClass.readableName())}, new String[]{selector, this.typesAsString(binding, true), new String(binding.declaringClass.shortReadableName())}, 145, method.sourceStart, method.sourceEnd);
    }

    public void typeCastError(CastExpression expression, TypeBinding leftType, TypeBinding rightType) {
        String rightShortName;
        String leftName = new String(leftType.readableName());
        String rightName = new String(rightType.readableName());
        String leftShortName = new String(leftType.shortReadableName());
        if (leftShortName.equals(rightShortName = new String(rightType.shortReadableName()))) {
            leftShortName = leftName;
            rightShortName = rightName;
        }
        this.handle(16777372, new String[]{rightName, leftName}, new String[]{rightShortName, leftShortName}, expression.sourceStart, expression.sourceEnd);
    }

    public void typeCollidesWithEnclosingType(TypeDeclaration typeDecl) {
        String[] arguments = new String[]{new String(typeDecl.name)};
        this.handle(16777534, arguments, arguments, typeDecl.sourceStart, typeDecl.sourceEnd);
    }

    public void typeCollidesWithPackage(CompilationUnitDeclaration compUnitDecl, TypeDeclaration typeDecl) {
        this.referenceContext = typeDecl;
        String[] arguments = new String[]{new String(compUnitDecl.getFileName()), new String(typeDecl.name)};
        this.handle(16777538, arguments, arguments, typeDecl.sourceStart, typeDecl.sourceEnd, compUnitDecl.compilationResult);
    }

    public void typeHiding(TypeDeclaration typeDecl, TypeBinding hiddenType) {
        int severity = this.computeSeverity(0x1000021);
        if (severity == 256) {
            return;
        }
        this.handle(0x1000021, new String[]{new String(typeDecl.name), new String(hiddenType.shortReadableName())}, new String[]{new String(typeDecl.name), new String(hiddenType.readableName())}, severity, typeDecl.sourceStart, typeDecl.sourceEnd);
    }

    public void typeHiding(TypeDeclaration typeDecl, TypeVariableBinding hiddenTypeParameter) {
        int severity = this.computeSeverity(16777792);
        if (severity == 256) {
            return;
        }
        if (hiddenTypeParameter.declaringElement instanceof TypeBinding) {
            TypeBinding declaringType = (TypeBinding)hiddenTypeParameter.declaringElement;
            this.handle(16777792, new String[]{new String(typeDecl.name), new String(hiddenTypeParameter.readableName()), new String(declaringType.readableName())}, new String[]{new String(typeDecl.name), new String(hiddenTypeParameter.shortReadableName()), new String(declaringType.shortReadableName())}, severity, typeDecl.sourceStart, typeDecl.sourceEnd);
        } else {
            MethodBinding declaringMethod = (MethodBinding)hiddenTypeParameter.declaringElement;
            this.handle(16777793, new String[]{new String(typeDecl.name), new String(hiddenTypeParameter.readableName()), new String(declaringMethod.selector), this.typesAsString(declaringMethod, false), new String(declaringMethod.declaringClass.readableName())}, new String[]{new String(typeDecl.name), new String(hiddenTypeParameter.shortReadableName()), new String(declaringMethod.selector), this.typesAsString(declaringMethod, true), new String(declaringMethod.declaringClass.shortReadableName())}, severity, typeDecl.sourceStart, typeDecl.sourceEnd);
        }
    }

    public void typeHiding(TypeParameter typeParam, Binding hidden) {
        int severity = this.computeSeverity(16777787);
        if (severity == 256) {
            return;
        }
        TypeBinding hiddenType = (TypeBinding)hidden;
        this.handle(16777787, new String[]{new String(typeParam.name), new String(hiddenType.readableName())}, new String[]{new String(typeParam.name), new String(hiddenType.shortReadableName())}, severity, typeParam.sourceStart, typeParam.sourceEnd);
    }

    public void typeMismatchError(TypeBinding actualType, TypeBinding expectedType, ASTNode location, ASTNode expectingLocation) {
        char[] expectedShortReadableName;
        if (this.options.sourceLevel < 0x310000L) {
            if (actualType instanceof TypeVariableBinding) {
                actualType = actualType.erasure();
            }
            if (expectedType instanceof TypeVariableBinding) {
                expectedType = expectedType.erasure();
            }
        }
        if (actualType != null && (actualType.tagBits & 0x80L) != 0L) {
            this.handle(0x1000002, new String[]{new String(actualType.leafComponentType().readableName())}, new String[]{new String(actualType.leafComponentType().shortReadableName())}, location.sourceStart, location.sourceEnd);
            return;
        }
        if (expectingLocation != null && (expectedType.tagBits & 0x80L) != 0L) {
            this.handle(0x1000002, new String[]{new String(expectedType.leafComponentType().readableName())}, new String[]{new String(expectedType.leafComponentType().shortReadableName())}, expectingLocation.sourceStart, expectingLocation.sourceEnd);
            return;
        }
        char[] actualShortReadableName = actualType.shortReadableName();
        if (CharOperation.equals(actualShortReadableName, expectedShortReadableName = expectedType.shortReadableName())) {
            actualShortReadableName = actualType.readableName();
            expectedShortReadableName = expectedType.readableName();
        }
        this.handle(0x1000011, new String[]{new String(actualType.readableName()), new String(expectedType.readableName())}, new String[]{new String(actualShortReadableName), new String(expectedShortReadableName)}, location.sourceStart, location.sourceEnd);
    }

    public void typeMismatchError(TypeBinding typeArgument, TypeVariableBinding typeParameter, ReferenceBinding genericType, ASTNode location) {
        if (location == null) {
            this.handle(16777742, new String[]{new String(typeArgument.readableName()), new String(genericType.readableName()), new String(typeParameter.sourceName), this.parameterBoundAsString(typeParameter, false)}, new String[]{new String(typeArgument.shortReadableName()), new String(genericType.shortReadableName()), new String(typeParameter.sourceName), this.parameterBoundAsString(typeParameter, true)}, 131, 0, 0);
            return;
        }
        this.handle(16777742, new String[]{new String(typeArgument.readableName()), new String(genericType.readableName()), new String(typeParameter.sourceName), this.parameterBoundAsString(typeParameter, false)}, new String[]{new String(typeArgument.shortReadableName()), new String(genericType.shortReadableName()), new String(typeParameter.sourceName), this.parameterBoundAsString(typeParameter, true)}, location.sourceStart, location.sourceEnd);
    }

    private String typesAsString(MethodBinding methodBinding, boolean makeShort) {
        return this.typesAsString(methodBinding, methodBinding.parameters, makeShort);
    }

    private String typesAsString(MethodBinding methodBinding, TypeBinding[] parameters, boolean makeShort) {
        if (methodBinding.isPolymorphic()) {
            TypeBinding[] types = methodBinding.original().parameters;
            StringBuffer buffer = new StringBuffer(10);
            int i = 0;
            int length = types.length;
            while (i < length) {
                boolean isVarargType;
                if (i != 0) {
                    buffer.append(", ");
                }
                TypeBinding type = types[i];
                boolean bl = isVarargType = i == length - 1;
                if (isVarargType) {
                    type = ((ArrayBinding)type).elementsType();
                }
                buffer.append(new String(makeShort ? type.shortReadableName() : type.readableName()));
                if (isVarargType) {
                    buffer.append("...");
                }
                ++i;
            }
            return buffer.toString();
        }
        StringBuffer buffer = new StringBuffer(10);
        int i = 0;
        int length = parameters.length;
        while (i < length) {
            boolean isVarargType;
            if (i != 0) {
                buffer.append(", ");
            }
            TypeBinding type = parameters[i];
            boolean bl = isVarargType = methodBinding.isVarargs() && i == length - 1;
            if (isVarargType) {
                type = ((ArrayBinding)type).elementsType();
            }
            buffer.append(new String(makeShort ? type.shortReadableName() : type.readableName()));
            if (isVarargType) {
                buffer.append("...");
            }
            ++i;
        }
        return buffer.toString();
    }

    private String typesAsString(TypeBinding[] types, boolean makeShort) {
        StringBuffer buffer = new StringBuffer(10);
        int i = 0;
        int length = types.length;
        while (i < length) {
            if (i != 0) {
                buffer.append(", ");
            }
            TypeBinding type = types[i];
            buffer.append(new String(makeShort ? type.shortReadableName() : type.readableName()));
            ++i;
        }
        return buffer.toString();
    }

    public void undefinedAnnotationValue(TypeBinding annotationType, MemberValuePair memberValuePair) {
        if (this.isRecoveredName(memberValuePair.name)) {
            return;
        }
        String name = new String(memberValuePair.name);
        this.handle(67109475, new String[]{name, new String(annotationType.readableName())}, new String[]{name, new String(annotationType.shortReadableName())}, memberValuePair.sourceStart, memberValuePair.sourceEnd);
    }

    public void undefinedLabel(BranchStatement statement) {
        if (this.isRecoveredName(statement.label)) {
            return;
        }
        String[] arguments = new String[]{new String(statement.label)};
        this.handle(536871086, arguments, arguments, statement.sourceStart, statement.sourceEnd);
    }

    public void undefinedTypeVariableSignature(char[] variableName, ReferenceBinding binaryType) {
        this.handle(536871450, new String[]{new String(variableName), new String(binaryType.readableName())}, new String[]{new String(variableName), new String(binaryType.shortReadableName())}, 131, 0, 0);
    }

    public void undocumentedEmptyBlock(int blockStart, int blockEnd) {
        this.handle(536871372, NoArgument, NoArgument, blockStart, blockEnd);
    }

    public void unexpectedStaticModifierForField(SourceTypeBinding type, FieldDeclaration fieldDecl) {
        String[] arguments = new String[]{new String(fieldDecl.name)};
        this.handle(33554778, arguments, arguments, fieldDecl.sourceStart, fieldDecl.sourceEnd);
    }

    public void unexpectedStaticModifierForMethod(ReferenceBinding type, AbstractMethodDeclaration methodDecl) {
        String[] arguments = new String[]{new String(type.sourceName()), new String(methodDecl.selector)};
        this.handle(67109225, arguments, arguments, methodDecl.sourceStart, methodDecl.sourceEnd);
    }

    public void unhandledException(TypeBinding exceptionType, ASTNode location) {
        boolean insideDefaultConstructor = this.referenceContext instanceof ConstructorDeclaration && ((ConstructorDeclaration)this.referenceContext).isDefaultConstructor();
        boolean insideImplicitConstructorCall = location instanceof ExplicitConstructorCall && ((ExplicitConstructorCall)location).accessMode == 1;
        int sourceEnd = location.sourceEnd;
        if (location instanceof LocalDeclaration) {
            sourceEnd = ((LocalDeclaration)location).declarationEnd;
        }
        this.handle(insideDefaultConstructor ? 16777362 : (insideImplicitConstructorCall ? 0x800008F : 16777384), new String[]{new String(exceptionType.readableName())}, new String[]{new String(exceptionType.shortReadableName())}, location.sourceStart, sourceEnd);
    }

    public void unhandledExceptionFromAutoClose(TypeBinding exceptionType, ASTNode location) {
        LocalVariableBinding localBinding = ((LocalDeclaration)location).binding;
        if (localBinding != null) {
            this.handle(16778098, new String[]{new String(exceptionType.readableName()), new String(localBinding.readableName())}, new String[]{new String(exceptionType.shortReadableName()), new String(localBinding.shortReadableName())}, location.sourceStart, location.sourceEnd);
        }
    }

    public void unhandledWarningToken(Expression token) {
        String[] arguments = new String[]{token.constant.stringValue()};
        this.handle(0x20000277, arguments, arguments, token.sourceStart, token.sourceEnd);
    }

    public void uninitializedBlankFinalField(FieldBinding field, ASTNode location) {
        String[] arguments = new String[]{new String(field.readableName())};
        this.handle(33554513, arguments, arguments, this.nodeSourceStart(field, location), this.nodeSourceEnd(field, location));
    }

    public void uninitializedLocalVariable(LocalVariableBinding binding, ASTNode location) {
        binding.tagBits |= 0x100L;
        String[] arguments = new String[]{new String(binding.readableName())};
        this.handle(0x20000033, arguments, arguments, this.nodeSourceStart(binding, location), this.nodeSourceEnd(binding, location));
    }

    public void unmatchedBracket(int position, ReferenceContext context, CompilationResult compilationResult) {
        this.handle(1610612956, NoArgument, NoArgument, position, position, context, compilationResult);
    }

    public void unnecessaryCast(CastExpression castExpression) {
        int severity = this.computeSeverity(553648309);
        if (severity == 256) {
            return;
        }
        TypeBinding castedExpressionType = castExpression.expression.resolvedType;
        this.handle(553648309, new String[]{new String(castedExpressionType.readableName()), new String(castExpression.type.resolvedType.readableName())}, new String[]{new String(castedExpressionType.shortReadableName()), new String(castExpression.type.resolvedType.shortReadableName())}, severity, castExpression.sourceStart, castExpression.sourceEnd);
    }

    public void unnecessaryElse(ASTNode location) {
        this.handle(536871101, NoArgument, NoArgument, location.sourceStart, location.sourceEnd);
    }

    public void unnecessaryEnclosingInstanceSpecification(Expression expression, ReferenceBinding targetType) {
        this.handle(0x1000017, new String[]{new String(targetType.readableName())}, new String[]{new String(targetType.shortReadableName())}, expression.sourceStart, expression.sourceEnd);
    }

    public void unnecessaryInstanceof(InstanceOfExpression instanceofExpression, TypeBinding checkType) {
        int severity = this.computeSeverity(553648311);
        if (severity == 256) {
            return;
        }
        TypeBinding expressionType = instanceofExpression.expression.resolvedType;
        this.handle(553648311, new String[]{new String(expressionType.readableName()), new String(checkType.readableName())}, new String[]{new String(expressionType.shortReadableName()), new String(checkType.shortReadableName())}, severity, instanceofExpression.sourceStart, instanceofExpression.sourceEnd);
    }

    public void unnecessaryNLSTags(int sourceStart, int sourceEnd) {
        this.handle(536871177, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void unnecessaryTypeArgumentsForMethodInvocation(MethodBinding method, TypeBinding[] genericTypeArguments, TypeReference[] typeArguments) {
        String methodName = method.isConstructor() ? new String(method.declaringClass.shortReadableName()) : new String(method.selector);
        this.handle(method.isConstructor() ? 67109524 : 67109443, new String[]{methodName, this.typesAsString(method, false), new String(method.declaringClass.readableName()), this.typesAsString(genericTypeArguments, false)}, new String[]{methodName, this.typesAsString(method, true), new String(method.declaringClass.shortReadableName()), this.typesAsString(genericTypeArguments, true)}, typeArguments[0].sourceStart, typeArguments[typeArguments.length - 1].sourceEnd);
    }

    public void unqualifiedFieldAccess(NameReference reference, FieldBinding field) {
        int sourceStart = reference.sourceStart;
        int sourceEnd = reference.sourceEnd;
        if (reference instanceof SingleNameReference) {
            int numberOfParens = (reference.bits & 0x1FE00000) >> 21;
            if (numberOfParens != 0) {
                sourceStart = this.retrieveStartingPositionAfterOpeningParenthesis(sourceStart, sourceEnd, numberOfParens);
                sourceEnd = this.retrieveEndingPositionAfterOpeningParenthesis(sourceStart, sourceEnd, numberOfParens);
            } else {
                sourceStart = this.nodeSourceStart(field, reference);
                sourceEnd = this.nodeSourceEnd(field, reference);
            }
        } else {
            sourceStart = this.nodeSourceStart(field, reference);
            sourceEnd = this.nodeSourceEnd(field, reference);
        }
        this.handle(570425423, new String[]{new String(field.declaringClass.readableName()), new String(field.name)}, new String[]{new String(field.declaringClass.shortReadableName()), new String(field.name)}, sourceStart, sourceEnd);
    }

    public void unreachableCatchBlock(ReferenceBinding exceptionType, ASTNode location) {
        this.handle(83886247, new String[]{new String(exceptionType.readableName())}, new String[]{new String(exceptionType.shortReadableName())}, location.sourceStart, location.sourceEnd);
    }

    public void unreachableCode(Statement statement) {
        int statemendEnd;
        int sourceStart = statement.sourceStart;
        int sourceEnd = statement.sourceEnd;
        if (statement instanceof LocalDeclaration) {
            LocalDeclaration declaration = (LocalDeclaration)statement;
            sourceStart = declaration.declarationSourceStart;
            sourceEnd = declaration.declarationSourceEnd;
        } else if (statement instanceof Expression && (statemendEnd = ((Expression)statement).statementEnd) != -1) {
            sourceEnd = statemendEnd;
        }
        this.handle(536871073, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void unresolvableReference(NameReference nameRef, Binding binding) {
        NameReference ref;
        String[] arguments = new String[]{new String(binding.readableName())};
        int end = nameRef.sourceEnd;
        int sourceStart = nameRef.sourceStart;
        if (nameRef instanceof QualifiedNameReference) {
            ref = (QualifiedNameReference)nameRef;
            if (this.isRecoveredName(ref.tokens)) {
                return;
            }
            if (ref.indexOfFirstFieldBinding >= 1) {
                end = (int)ref.sourcePositions[ref.indexOfFirstFieldBinding - 1];
            }
        } else {
            ref = (SingleNameReference)nameRef;
            if (this.isRecoveredName(((SingleNameReference)ref).token)) {
                return;
            }
            int numberOfParens = (((SingleNameReference)ref).bits & 0x1FE00000) >> 21;
            if (numberOfParens != 0) {
                sourceStart = this.retrieveStartingPositionAfterOpeningParenthesis(sourceStart, end, numberOfParens);
                end = this.retrieveEndingPositionAfterOpeningParenthesis(sourceStart, end, numberOfParens);
            }
        }
        int problemId = (nameRef.bits & 3) != 0 && (nameRef.bits & 4) == 0 ? 33554515 : 0x22000032;
        this.handle(problemId, arguments, arguments, sourceStart, end);
    }

    public void unsafeCast(CastExpression castExpression, Scope scope) {
        if (this.options.sourceLevel < 0x310000L) {
            return;
        }
        int severity = this.computeSeverity(0x1000221);
        if (severity == 256) {
            return;
        }
        TypeBinding castedExpressionType = castExpression.expression.resolvedType;
        TypeBinding castExpressionResolvedType = castExpression.resolvedType;
        this.handle(0x1000221, new String[]{new String(castedExpressionType.readableName()), new String(castExpressionResolvedType.readableName())}, new String[]{new String(castedExpressionType.shortReadableName()), new String(castExpressionResolvedType.shortReadableName())}, severity, castExpression.sourceStart, castExpression.sourceEnd);
    }

    public void unsafeGenericArrayForVarargs(TypeBinding leafComponentType, ASTNode location) {
        int severity = this.computeSeverity(67109438);
        if (severity == 256) {
            return;
        }
        this.handle(67109438, new String[]{new String(leafComponentType.readableName())}, new String[]{new String(leafComponentType.shortReadableName())}, severity, location.sourceStart, location.sourceEnd);
    }

    public void unsafeRawFieldAssignment(FieldBinding field, TypeBinding expressionType, ASTNode location) {
        if (this.options.sourceLevel < 0x310000L) {
            return;
        }
        int severity = this.computeSeverity(16777752);
        if (severity == 256) {
            return;
        }
        this.handle(16777752, new String[]{new String(expressionType.readableName()), new String(field.name), new String(field.declaringClass.readableName()), new String(field.declaringClass.erasure().readableName())}, new String[]{new String(expressionType.shortReadableName()), new String(field.name), new String(field.declaringClass.shortReadableName()), new String(field.declaringClass.erasure().shortReadableName())}, severity, this.nodeSourceStart(field, location), this.nodeSourceEnd(field, location));
    }

    public void unsafeRawGenericMethodInvocation(ASTNode location, MethodBinding rawMethod, TypeBinding[] argumentTypes) {
        if (this.options.sourceLevel < 0x310000L) {
            return;
        }
        boolean isConstructor = rawMethod.isConstructor();
        int severity = this.computeSeverity(isConstructor ? 16777785 : 16777786);
        if (severity == 256) {
            return;
        }
        if (isConstructor) {
            this.handle(16777785, new String[]{new String(rawMethod.declaringClass.sourceName()), this.typesAsString(rawMethod.original(), false), new String(rawMethod.declaringClass.readableName()), this.typesAsString(argumentTypes, false)}, new String[]{new String(rawMethod.declaringClass.sourceName()), this.typesAsString(rawMethod.original(), true), new String(rawMethod.declaringClass.shortReadableName()), this.typesAsString(argumentTypes, true)}, severity, location.sourceStart, location.sourceEnd);
        } else {
            this.handle(16777786, new String[]{new String(rawMethod.selector), this.typesAsString(rawMethod.original(), false), new String(rawMethod.declaringClass.readableName()), this.typesAsString(argumentTypes, false)}, new String[]{new String(rawMethod.selector), this.typesAsString(rawMethod.original(), true), new String(rawMethod.declaringClass.shortReadableName()), this.typesAsString(argumentTypes, true)}, severity, location.sourceStart, location.sourceEnd);
        }
    }

    public void unsafeRawInvocation(ASTNode location, MethodBinding rawMethod) {
        if (this.options.sourceLevel < 0x310000L) {
            return;
        }
        boolean isConstructor = rawMethod.isConstructor();
        int severity = this.computeSeverity(isConstructor ? 0x1000212 : 16777747);
        if (severity == 256) {
            return;
        }
        if (isConstructor) {
            this.handle(0x1000212, new String[]{new String(rawMethod.declaringClass.readableName()), this.typesAsString(rawMethod.original(), rawMethod.parameters, false), new String(rawMethod.declaringClass.erasure().readableName())}, new String[]{new String(rawMethod.declaringClass.shortReadableName()), this.typesAsString(rawMethod.original(), rawMethod.parameters, true), new String(rawMethod.declaringClass.erasure().shortReadableName())}, severity, location.sourceStart, location.sourceEnd);
        } else {
            this.handle(16777747, new String[]{new String(rawMethod.selector), this.typesAsString(rawMethod.original(), rawMethod.parameters, false), new String(rawMethod.declaringClass.readableName()), new String(rawMethod.declaringClass.erasure().readableName())}, new String[]{new String(rawMethod.selector), this.typesAsString(rawMethod.original(), rawMethod.parameters, true), new String(rawMethod.declaringClass.shortReadableName()), new String(rawMethod.declaringClass.erasure().shortReadableName())}, severity, location.sourceStart, location.sourceEnd);
        }
    }

    public void unsafeReturnTypeOverride(MethodBinding currentMethod, MethodBinding inheritedMethod, SourceTypeBinding type) {
        if (this.options.sourceLevel < 0x310000L) {
            return;
        }
        int severity = this.computeSeverity(67109423);
        if (severity == 256) {
            return;
        }
        int start = type.sourceStart();
        int end = type.sourceEnd();
        if (currentMethod.declaringClass == type) {
            TypeReference location = ((MethodDeclaration)currentMethod.sourceMethod()).returnType;
            start = location.sourceStart();
            end = location.sourceEnd();
        }
        this.handle(67109423, new String[]{new String(currentMethod.returnType.readableName()), new String(currentMethod.selector), this.typesAsString(currentMethod.original(), false), new String(currentMethod.declaringClass.readableName()), new String(inheritedMethod.returnType.readableName()), new String(inheritedMethod.declaringClass.readableName())}, new String[]{new String(currentMethod.returnType.shortReadableName()), new String(currentMethod.selector), this.typesAsString(currentMethod.original(), true), new String(currentMethod.declaringClass.shortReadableName()), new String(inheritedMethod.returnType.shortReadableName()), new String(inheritedMethod.declaringClass.shortReadableName())}, severity, start, end);
    }

    public void unsafeTypeConversion(Expression expression, TypeBinding expressionType, TypeBinding expectedType) {
        if (this.options.sourceLevel < 0x310000L) {
            return;
        }
        int severity = this.computeSeverity(16777748);
        if (severity == 256) {
            return;
        }
        if (!this.options.reportUnavoidableGenericTypeProblems && expression.forcedToBeRaw(this.referenceContext)) {
            return;
        }
        this.handle(16777748, new String[]{new String(expressionType.readableName()), new String(expectedType.readableName()), new String(expectedType.erasure().readableName())}, new String[]{new String(expressionType.shortReadableName()), new String(expectedType.shortReadableName()), new String(expectedType.erasure().shortReadableName())}, severity, expression.sourceStart, expression.sourceEnd);
    }

    public void unusedArgument(LocalDeclaration localDecl) {
        int severity = this.computeSeverity(536870974);
        if (severity == 256) {
            return;
        }
        String[] arguments = new String[]{new String(localDecl.name)};
        this.handle(536870974, arguments, arguments, severity, localDecl.sourceStart, localDecl.sourceEnd);
    }

    public void unusedDeclaredThrownException(ReferenceBinding exceptionType, AbstractMethodDeclaration method, ASTNode location) {
        boolean isConstructor = method.isConstructor();
        int severity = this.computeSeverity(isConstructor ? 536871098 : 536871097);
        if (severity == 256) {
            return;
        }
        if (isConstructor) {
            this.handle(536871098, new String[]{new String(method.binding.declaringClass.readableName()), this.typesAsString(method.binding, false), new String(exceptionType.readableName())}, new String[]{new String(method.binding.declaringClass.shortReadableName()), this.typesAsString(method.binding, true), new String(exceptionType.shortReadableName())}, severity, location.sourceStart, location.sourceEnd);
        } else {
            this.handle(536871097, new String[]{new String(method.binding.declaringClass.readableName()), new String(method.selector), this.typesAsString(method.binding, false), new String(exceptionType.readableName())}, new String[]{new String(method.binding.declaringClass.shortReadableName()), new String(method.selector), this.typesAsString(method.binding, true), new String(exceptionType.shortReadableName())}, severity, location.sourceStart, location.sourceEnd);
        }
    }

    public void unusedImport(ImportReference importRef) {
        int severity = this.computeSeverity(268435844);
        if (severity == 256) {
            return;
        }
        String[] arguments = new String[]{CharOperation.toString(importRef.tokens)};
        this.handle(268435844, arguments, arguments, severity, importRef.sourceStart, importRef.sourceEnd);
    }

    public void unusedLabel(LabeledStatement statement) {
        int severity = this.computeSeverity(536871111);
        if (severity == 256) {
            return;
        }
        String[] arguments = new String[]{new String(statement.label)};
        this.handle(536871111, arguments, arguments, severity, statement.sourceStart, statement.labelEnd);
    }

    public void unusedLocalVariable(LocalDeclaration localDecl) {
        int severity = this.computeSeverity(536870973);
        if (severity == 256) {
            return;
        }
        String[] arguments = new String[]{new String(localDecl.name)};
        this.handle(536870973, arguments, arguments, severity, localDecl.sourceStart, localDecl.sourceEnd);
    }

    public void unusedObjectAllocation(AllocationExpression allocationExpression) {
        this.handle(536871060, NoArgument, NoArgument, allocationExpression.sourceStart, allocationExpression.sourceEnd);
    }

    public void unusedPrivateConstructor(ConstructorDeclaration constructorDecl) {
        int severity = this.computeSeverity(603979910);
        if (severity == 256) {
            return;
        }
        MethodBinding constructor = constructorDecl.binding;
        this.handle(603979910, new String[]{new String(constructor.declaringClass.readableName()), this.typesAsString(constructor, false)}, new String[]{new String(constructor.declaringClass.shortReadableName()), this.typesAsString(constructor, true)}, severity, constructorDecl.sourceStart, constructorDecl.sourceEnd);
    }

    public void unusedPrivateField(FieldDeclaration fieldDecl) {
        ReferenceBinding referenceBinding;
        int severity = this.computeSeverity(570425421);
        if (severity == 256) {
            return;
        }
        FieldBinding field = fieldDecl.binding;
        if (CharOperation.equals(TypeConstants.SERIALVERSIONUID, field.name) && field.isStatic() && field.isFinal() && TypeBinding.LONG == field.type && (referenceBinding = field.declaringClass) != null && referenceBinding.findSuperTypeOriginatingFrom(37, false) != null) {
            return;
        }
        if (CharOperation.equals(TypeConstants.SERIALPERSISTENTFIELDS, field.name) && field.isStatic() && field.isFinal() && field.type.dimensions() == 1 && CharOperation.equals(TypeConstants.CharArray_JAVA_IO_OBJECTSTREAMFIELD, field.type.leafComponentType().readableName()) && (referenceBinding = field.declaringClass) != null && referenceBinding.findSuperTypeOriginatingFrom(37, false) != null) {
            return;
        }
        this.handle(570425421, new String[]{new String(field.declaringClass.readableName()), new String(field.name)}, new String[]{new String(field.declaringClass.shortReadableName()), new String(field.name)}, severity, this.nodeSourceStart(field, fieldDecl), this.nodeSourceEnd(field, fieldDecl));
    }

    public void unusedPrivateMethod(AbstractMethodDeclaration methodDecl) {
        int severity = this.computeSeverity(603979894);
        if (severity == 256) {
            return;
        }
        MethodBinding method = methodDecl.binding;
        if (!method.isStatic() && TypeBinding.VOID == method.returnType && method.parameters.length == 1 && method.parameters[0].dimensions() == 0 && CharOperation.equals(method.selector, TypeConstants.READOBJECT) && CharOperation.equals(TypeConstants.CharArray_JAVA_IO_OBJECTINPUTSTREAM, method.parameters[0].readableName())) {
            return;
        }
        if (!method.isStatic() && TypeBinding.VOID == method.returnType && method.parameters.length == 1 && method.parameters[0].dimensions() == 0 && CharOperation.equals(method.selector, TypeConstants.WRITEOBJECT) && CharOperation.equals(TypeConstants.CharArray_JAVA_IO_OBJECTOUTPUTSTREAM, method.parameters[0].readableName())) {
            return;
        }
        if (!method.isStatic() && 1 == method.returnType.id && method.parameters.length == 0 && CharOperation.equals(method.selector, TypeConstants.READRESOLVE)) {
            return;
        }
        if (!method.isStatic() && 1 == method.returnType.id && method.parameters.length == 0 && CharOperation.equals(method.selector, TypeConstants.WRITEREPLACE)) {
            return;
        }
        this.handle(603979894, new String[]{new String(method.declaringClass.readableName()), new String(method.selector), this.typesAsString(method, false)}, new String[]{new String(method.declaringClass.shortReadableName()), new String(method.selector), this.typesAsString(method, true)}, severity, methodDecl.sourceStart, methodDecl.sourceEnd);
    }

    public void unusedPrivateType(TypeDeclaration typeDecl) {
        int severity = this.computeSeverity(553648135);
        if (severity == 256) {
            return;
        }
        SourceTypeBinding type = typeDecl.binding;
        this.handle(553648135, new String[]{new String(type.readableName())}, new String[]{new String(type.shortReadableName())}, severity, typeDecl.sourceStart, typeDecl.sourceEnd);
    }

    public void unusedWarningToken(Expression token) {
        String[] arguments = new String[]{token.constant.stringValue()};
        this.handle(536871547, arguments, arguments, token.sourceStart, token.sourceEnd);
    }

    public void useAssertAsAnIdentifier(int sourceStart, int sourceEnd) {
        this.handle(536871352, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void useEnumAsAnIdentifier(int sourceStart, int sourceEnd) {
        this.handle(536871353, NoArgument, NoArgument, sourceStart, sourceEnd);
    }

    public void varargsArgumentNeedCast(MethodBinding method, TypeBinding argumentType, InvocationSite location) {
        int severity = this.options.getSeverity(0x20000040);
        if (severity == 256) {
            return;
        }
        ArrayBinding varargsType = (ArrayBinding)method.parameters[method.parameters.length - 1];
        if (method.isConstructor()) {
            this.handle(134218530, new String[]{new String(argumentType.readableName()), new String(varargsType.readableName()), new String(method.declaringClass.readableName()), this.typesAsString(method, false), new String(varargsType.elementsType().readableName())}, new String[]{new String(argumentType.shortReadableName()), new String(varargsType.shortReadableName()), new String(method.declaringClass.shortReadableName()), this.typesAsString(method, true), new String(varargsType.elementsType().shortReadableName())}, severity, location.sourceStart(), location.sourceEnd());
        } else {
            this.handle(67109665, new String[]{new String(argumentType.readableName()), new String(varargsType.readableName()), new String(method.selector), this.typesAsString(method, false), new String(method.declaringClass.readableName()), new String(varargsType.elementsType().readableName())}, new String[]{new String(argumentType.shortReadableName()), new String(varargsType.shortReadableName()), new String(method.selector), this.typesAsString(method, true), new String(method.declaringClass.shortReadableName()), new String(varargsType.elementsType().shortReadableName())}, severity, location.sourceStart(), location.sourceEnd());
        }
    }

    public void varargsConflict(MethodBinding method1, MethodBinding method2, SourceTypeBinding type) {
        this.handle(67109667, new String[]{new String(method1.selector), this.typesAsString(method1, false), new String(method1.declaringClass.readableName()), this.typesAsString(method2, false), new String(method2.declaringClass.readableName())}, new String[]{new String(method1.selector), this.typesAsString(method1, true), new String(method1.declaringClass.shortReadableName()), this.typesAsString(method2, true), new String(method2.declaringClass.shortReadableName())}, method1.declaringClass == type ? method1.sourceStart() : type.sourceStart(), method1.declaringClass == type ? method1.sourceEnd() : type.sourceEnd());
    }

    public void safeVarargsOnFixedArityMethod(MethodBinding method) {
        String[] arguments = new String[]{new String(method.isConstructor() ? method.declaringClass.shortReadableName() : method.selector)};
        this.handle(67109668, arguments, arguments, method.sourceStart(), method.sourceEnd());
    }

    public void safeVarargsOnNonFinalInstanceMethod(MethodBinding method) {
        String[] arguments = new String[]{new String(method.isConstructor() ? method.declaringClass.shortReadableName() : method.selector)};
        this.handle(67109669, arguments, arguments, method.sourceStart(), method.sourceEnd());
    }

    public void possibleHeapPollutionFromVararg(AbstractVariableDeclaration vararg) {
        String[] arguments = new String[]{new String(vararg.name)};
        this.handle(67109670, arguments, arguments, vararg.sourceStart, vararg.sourceEnd);
    }

    public void variableTypeCannotBeVoid(AbstractVariableDeclaration varDecl) {
        String[] arguments = new String[]{new String(varDecl.name)};
        this.handle(536870964, arguments, arguments, varDecl.sourceStart, varDecl.sourceEnd);
    }

    public void variableTypeCannotBeVoidArray(AbstractVariableDeclaration varDecl) {
        this.handle(536870966, NoArgument, NoArgument, varDecl.type.sourceStart, varDecl.type.sourceEnd);
    }

    public void visibilityConflict(MethodBinding currentMethod, MethodBinding inheritedMethod) {
        this.handle(67109273, new String[]{new String(inheritedMethod.declaringClass.readableName())}, new String[]{new String(inheritedMethod.declaringClass.shortReadableName())}, currentMethod.sourceStart(), currentMethod.sourceEnd());
    }

    public void wildcardAssignment(TypeBinding variableType, TypeBinding expressionType, ASTNode location) {
        this.handle(16777758, new String[]{new String(expressionType.readableName()), new String(variableType.readableName())}, new String[]{new String(expressionType.shortReadableName()), new String(variableType.shortReadableName())}, location.sourceStart, location.sourceEnd);
    }

    public void wildcardInvocation(ASTNode location, TypeBinding receiverType, MethodBinding method, TypeBinding[] arguments) {
        TypeBinding offendingArgument = null;
        TypeBinding offendingParameter = null;
        int i = 0;
        int length = method.parameters.length;
        while (i < length) {
            TypeBinding parameter = method.parameters[i];
            if (parameter.isWildcard() && ((WildcardBinding)parameter).boundKind != 2) {
                offendingParameter = parameter;
                offendingArgument = arguments[i];
                break;
            }
            ++i;
        }
        if (method.isConstructor()) {
            this.handle(16777756, new String[]{new String(receiverType.sourceName()), this.typesAsString(method, false), new String(receiverType.readableName()), this.typesAsString(arguments, false), new String(offendingArgument.readableName()), new String(offendingParameter.readableName())}, new String[]{new String(receiverType.sourceName()), this.typesAsString(method, true), new String(receiverType.shortReadableName()), this.typesAsString(arguments, true), new String(offendingArgument.shortReadableName()), new String(offendingParameter.shortReadableName())}, location.sourceStart, location.sourceEnd);
        } else {
            this.handle(16777757, new String[]{new String(method.selector), this.typesAsString(method, false), new String(receiverType.readableName()), this.typesAsString(arguments, false), new String(offendingArgument.readableName()), new String(offendingParameter.readableName())}, new String[]{new String(method.selector), this.typesAsString(method, true), new String(receiverType.shortReadableName()), this.typesAsString(arguments, true), new String(offendingArgument.shortReadableName()), new String(offendingParameter.shortReadableName())}, location.sourceStart, location.sourceEnd);
        }
    }

    public void wrongSequenceOfExceptionTypesError(TypeReference typeRef, TypeBinding exceptionType, TypeBinding hidingExceptionType) {
        this.handle(553648315, new String[]{new String(exceptionType.readableName()), new String(hidingExceptionType.readableName())}, new String[]{new String(exceptionType.shortReadableName()), new String(hidingExceptionType.shortReadableName())}, typeRef.sourceStart, typeRef.sourceEnd);
    }

    public void wrongSequenceOfExceptionTypes(TypeReference typeRef, TypeBinding exceptionType, TypeBinding hidingExceptionType) {
        this.handle(553649001, new String[]{new String(exceptionType.readableName()), new String(hidingExceptionType.readableName())}, new String[]{new String(exceptionType.shortReadableName()), new String(hidingExceptionType.shortReadableName())}, typeRef.sourceStart, typeRef.sourceEnd);
    }

    public void autoManagedResourcesNotBelow17(LocalDeclaration[] resources) {
        this.handle(1610613610, NoArgument, NoArgument, resources[0].declarationSourceStart, resources[resources.length - 1].declarationSourceEnd);
    }

    public void cannotInferElidedTypes(AllocationExpression allocationExpression) {
        String[] arguments = new String[]{allocationExpression.type.toString()};
        this.handle(16778094, arguments, arguments, allocationExpression.sourceStart, allocationExpression.sourceEnd);
    }

    public void diamondNotWithExplicitTypeArguments(TypeReference[] typeArguments) {
        this.handle(16778095, NoArgument, NoArgument, typeArguments[0].sourceStart, typeArguments[typeArguments.length - 1].sourceEnd);
    }

    public void diamondNotWithAnoymousClasses(TypeReference type) {
        this.handle(16778096, NoArgument, NoArgument, type.sourceStart, type.sourceEnd);
    }

    public void redundantSpecificationOfTypeArguments(ASTNode location, TypeBinding[] argumentTypes) {
        int severity = this.computeSeverity(16778100);
        if (severity != 256) {
            int sourceStart = -1;
            if (location instanceof QualifiedTypeReference) {
                QualifiedTypeReference ref = (QualifiedTypeReference)location;
                sourceStart = (int)(ref.sourcePositions[ref.sourcePositions.length - 1] >> 32);
            } else {
                sourceStart = location.sourceStart;
            }
            this.handle(16778100, new String[]{this.typesAsString(argumentTypes, false)}, new String[]{this.typesAsString(argumentTypes, true)}, severity, sourceStart, location.sourceEnd);
        }
    }
}

