/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 */
package org.eclipse.jdt.internal.eval;

import java.util.Locale;
import java.util.Map;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.CompletionRequestor;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.WorkingCopyOwner;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.CompletionEngine;
import org.eclipse.jdt.internal.codeassist.ISelectionRequestor;
import org.eclipse.jdt.internal.codeassist.SelectionEngine;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileReader;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFormatException;
import org.eclipse.jdt.internal.compiler.env.IBinaryType;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.env.INameEnvironment;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.util.SuffixConstants;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.SearchableEnvironment;
import org.eclipse.jdt.internal.core.util.Util;
import org.eclipse.jdt.internal.eval.CodeSnippetEvaluator;
import org.eclipse.jdt.internal.eval.CodeSnippetSkeleton;
import org.eclipse.jdt.internal.eval.CodeSnippetToCuMapper;
import org.eclipse.jdt.internal.eval.EvaluationConstants;
import org.eclipse.jdt.internal.eval.EvaluationContext;
import org.eclipse.jdt.internal.eval.Evaluator;
import org.eclipse.jdt.internal.eval.GlobalVariable;
import org.eclipse.jdt.internal.eval.IRequestor;
import org.eclipse.jdt.internal.eval.InstallException;
import org.eclipse.jdt.internal.eval.VariablesEvaluator;
import org.eclipse.jdt.internal.eval.VariablesInfo;

public class EvaluationContext
implements EvaluationConstants,
SuffixConstants {
    static int VAR_CLASS_COUNTER = 0;
    static int CODE_SNIPPET_COUNTER = 0;
    GlobalVariable[] variables = new GlobalVariable[5];
    int variableCount = 0;
    char[][] imports = CharOperation.NO_CHAR_CHAR;
    char[] packageName = CharOperation.NO_CHAR;
    boolean varsChanged = true;
    VariablesInfo installedVars;
    IBinaryType codeSnippetBinary;
    String lineSeparator = Util.LINE_SEPARATOR;
    char[] declaringTypeName;
    int[] localVariableModifiers;
    char[][] localVariableTypeNames;
    char[][] localVariableNames;
    boolean isStatic = true;
    boolean isConstructorCall = false;

    public GlobalVariable[] allVariables() {
        GlobalVariable[] result = new GlobalVariable[this.variableCount];
        System.arraycopy(this.variables, 0, result, 0, this.variableCount);
        return result;
    }

    public void complete(char[] codeSnippet, int completionPosition, SearchableEnvironment environment, CompletionRequestor requestor, Map options, IJavaProject project, WorkingCopyOwner owner, IProgressMonitor monitor) {
        try {
            IRequestor variableRequestor = new IRequestor(){

                public boolean acceptClassFiles(ClassFile[] classFiles, char[] codeSnippetClassName) {
                    return true;
                }

                public void acceptProblem(CategorizedProblem problem, char[] fragmentSource, int fragmentKind) {
                }
            };
            this.evaluateVariables(environment, options, variableRequestor, new DefaultProblemFactory(Locale.getDefault()));
        }
        catch (InstallException installException) {}
        final char[] className = "CodeSnippetCompletion".toCharArray();
        long complianceVersion = CompilerOptions.versionToJdkLevel(options.get("org.eclipse.jdt.core.compiler.compliance"));
        final CodeSnippetToCuMapper mapper = new CodeSnippetToCuMapper(codeSnippet, this.packageName, this.imports, className, this.installedVars == null ? null : this.installedVars.className, this.localVariableNames, this.localVariableTypeNames, this.localVariableModifiers, this.declaringTypeName, this.lineSeparator, complianceVersion);
        ICompilationUnit sourceUnit = new ICompilationUnit(){

            public char[] getFileName() {
                return CharOperation.concat(className, org.eclipse.jdt.internal.core.util.Util.defaultJavaExtension().toCharArray());
            }

            public char[] getContents() {
                return mapper.getCUSource(EvaluationContext.this.lineSeparator);
            }

            public char[] getMainTypeName() {
                return className;
            }

            public char[][] getPackageName() {
                return null;
            }
        };
        CompletionEngine engine = new CompletionEngine(environment, mapper.getCompletionRequestor(requestor), options, project, owner, monitor);
        if (this.installedVars != null) {
            IBinaryType binaryType = this.getRootCodeSnippetBinary();
            if (binaryType != null) {
                engine.lookupEnvironment.cacheBinaryType(binaryType, null);
            }
            ClassFile[] classFiles = this.installedVars.classFiles;
            int i = 0;
            while (i < classFiles.length) {
                ClassFile classFile = classFiles[i];
                ClassFileReader binary = null;
                try {
                    binary = new ClassFileReader(classFile.getBytes(), null);
                }
                catch (ClassFormatException e) {
                    e.printStackTrace();
                }
                engine.lookupEnvironment.cacheBinaryType(binary, null);
                ++i;
            }
        }
        engine.complete(sourceUnit, mapper.startPosOffset + completionPosition, mapper.startPosOffset, null);
    }

    public void deleteVariable(GlobalVariable variable) {
        int elementCount;
        int j;
        GlobalVariable[] vars = this.variables;
        int index = -1;
        int i = 0;
        while (i < this.variableCount) {
            if (vars[i].equals(variable)) {
                index = i;
                break;
            }
            ++i;
        }
        if (index == -1) {
            return;
        }
        if ((j = (elementCount = this.variableCount--) - index - 1) > 0) {
            System.arraycopy(vars, index + 1, vars, index, j);
        }
        vars[elementCount - 1] = null;
        this.varsChanged = true;
    }

    private void deployCodeSnippetClassIfNeeded(IRequestor requestor) throws InstallException {
        if (this.codeSnippetBinary == null && !requestor.acceptClassFiles(new ClassFile[]{new ClassFile(){

            public byte[] getBytes() {
                return EvaluationContext.this.getCodeSnippetBytes();
            }

            public char[][] getCompoundName() {
                return EvaluationConstants.ROOT_COMPOUND_NAME;
            }
        }}, null)) {
            throw new InstallException();
        }
    }

    public void evaluate(char[] codeSnippet, char[][] contextLocalVariableTypeNames, char[][] contextLocalVariableNames, int[] contextLocalVariableModifiers, char[] contextDeclaringTypeName, boolean contextIsStatic, boolean contextIsConstructorCall, INameEnvironment environment, Map options, IRequestor requestor, IProblemFactory problemFactory) throws InstallException {
        this.localVariableTypeNames = contextLocalVariableTypeNames;
        this.localVariableNames = contextLocalVariableNames;
        this.localVariableModifiers = contextLocalVariableModifiers;
        this.declaringTypeName = contextDeclaringTypeName;
        this.isStatic = contextIsStatic;
        this.isConstructorCall = contextIsConstructorCall;
        this.deployCodeSnippetClassIfNeeded(requestor);
        try {
            CodeSnippetEvaluator evaluator;
            ClassFile[] classes;
            class ForwardingRequestor
            implements IRequestor {
                boolean hasErrors;
                final /* synthetic */ EvaluationContext this$0;
                private final /* synthetic */ IRequestor val$requestor;

                ForwardingRequestor(EvaluationContext evaluationContext, IRequestor iRequestor) {
                    this.this$0 = evaluationContext;
                    this.val$requestor = iRequestor;
                    this.hasErrors = false;
                }

                public boolean acceptClassFiles(ClassFile[] classFiles, char[] codeSnippetClassName) {
                    return this.val$requestor.acceptClassFiles(classFiles, codeSnippetClassName);
                }

                public void acceptProblem(CategorizedProblem problem, char[] fragmentSource, int fragmentKind) {
                    this.val$requestor.acceptProblem(problem, fragmentSource, fragmentKind);
                    if (problem.isError()) {
                        this.hasErrors = true;
                    }
                }
            }
            ForwardingRequestor forwardingRequestor = new ForwardingRequestor(this, requestor);
            if (this.varsChanged) {
                this.evaluateVariables(environment, options, forwardingRequestor, problemFactory);
            }
            if (!forwardingRequestor.hasErrors && (classes = (evaluator = new CodeSnippetEvaluator(codeSnippet, this, environment, options, requestor, problemFactory)).getClasses()) != null && classes.length > 0) {
                char[] simpleClassName = ((Evaluator)evaluator).getClassName();
                char[] pkgName = this.getPackageName();
                char[] qualifiedClassName = pkgName.length == 0 ? simpleClassName : CharOperation.concat(pkgName, simpleClassName, '.');
                ++CODE_SNIPPET_COUNTER;
                if (!requestor.acceptClassFiles(classes, qualifiedClassName)) {
                    throw new InstallException();
                }
            }
        }
        finally {
            this.localVariableTypeNames = null;
            this.localVariableNames = null;
            this.localVariableModifiers = null;
            this.declaringTypeName = null;
            this.isStatic = true;
            this.isConstructorCall = false;
        }
    }

    public void evaluate(char[] codeSnippet, INameEnvironment environment, Map options, IRequestor requestor, IProblemFactory problemFactory) throws InstallException {
        this.evaluate(codeSnippet, null, null, null, null, true, false, environment, options, requestor, problemFactory);
    }

    public void evaluateImports(INameEnvironment environment, IRequestor requestor, IProblemFactory problemFactory) {
        int i = 0;
        while (i < this.imports.length) {
            CategorizedProblem[] problems = new CategorizedProblem[1];
            char[] importDeclaration = this.imports[i];
            char[][] splitDeclaration = CharOperation.splitOn('.', importDeclaration);
            int splitLength = splitDeclaration.length;
            if (splitLength > 0) {
                char[] pkgName = splitDeclaration[splitLength - 1];
                if (pkgName.length == 1 && pkgName[0] == '*') {
                    char[][] parentName;
                    switch (splitLength) {
                        case 1: {
                            parentName = null;
                            break;
                        }
                        case 2: {
                            parentName = null;
                            pkgName = splitDeclaration[splitLength - 2];
                            break;
                        }
                        default: {
                            parentName = CharOperation.subarray(splitDeclaration, 0, splitLength - 2);
                            pkgName = splitDeclaration[splitLength - 2];
                        }
                    }
                    if (!environment.isPackage(parentName, pkgName)) {
                        String[] arguments = new String[]{new String(importDeclaration)};
                        problems[0] = problemFactory.createProblem(importDeclaration, 268435846, arguments, arguments, 0, 0, importDeclaration.length - 1, i, 0);
                    }
                } else if (environment.findType(splitDeclaration) == null) {
                    String[] arguments = new String[]{new String(importDeclaration)};
                    problems[0] = problemFactory.createProblem(importDeclaration, 268435846, arguments, arguments, 0, 0, importDeclaration.length - 1, i, 0);
                }
            } else {
                String[] arguments = new String[]{new String(importDeclaration)};
                problems[0] = problemFactory.createProblem(importDeclaration, 268435846, arguments, arguments, 0, 0, importDeclaration.length - 1, i, 0);
            }
            if (problems[0] != null) {
                requestor.acceptProblem(problems[0], importDeclaration, 3);
            }
            ++i;
        }
    }

    public void evaluateVariable(GlobalVariable variable, INameEnvironment environment, Map options, IRequestor requestor, IProblemFactory problemFactory) throws InstallException {
        this.evaluate(variable.getName(), environment, options, requestor, problemFactory);
    }

    public void evaluateVariables(INameEnvironment environment, Map options, IRequestor requestor, IProblemFactory problemFactory) throws InstallException {
        this.deployCodeSnippetClassIfNeeded(requestor);
        VariablesEvaluator evaluator = new VariablesEvaluator(this, environment, options, requestor, problemFactory);
        Object[] classes = evaluator.getClasses();
        if (classes != null) {
            if (classes.length > 0) {
                org.eclipse.jdt.internal.core.util.Util.sort(classes, new Util.Comparer(){

                    public int compare(Object a, Object b) {
                        if (a == b) {
                            return 0;
                        }
                        ClassFile enclosing = ((ClassFile)a).enclosingClassFile;
                        while (enclosing != null) {
                            if (enclosing == b) {
                                return 1;
                            }
                            enclosing = enclosing.enclosingClassFile;
                        }
                        return -1;
                    }
                });
                if (!requestor.acceptClassFiles((ClassFile[])classes, null)) {
                    throw new InstallException();
                }
                int count = this.variableCount;
                GlobalVariable[] variablesCopy = new GlobalVariable[count];
                System.arraycopy(this.variables, 0, variablesCopy, 0, count);
                this.installedVars = new VariablesInfo(evaluator.getPackageName(), evaluator.getClassName(), (ClassFile[])classes, variablesCopy, count);
                ++VAR_CLASS_COUNTER;
            }
            this.varsChanged = false;
        }
    }

    byte[] getCodeSnippetBytes() {
        byte[] byArray = new byte[753];
        byArray[0] = -54;
        byArray[1] = -2;
        byArray[2] = -70;
        byArray[3] = -66;
        byArray[5] = 3;
        byArray[7] = 45;
        byArray[9] = 35;
        byArray[10] = 1;
        byArray[12] = 48;
        byArray[13] = 111;
        byArray[14] = 114;
        byArray[15] = 103;
        byArray[16] = 47;
        byArray[17] = 101;
        byArray[18] = 99;
        byArray[19] = 108;
        byArray[20] = 105;
        byArray[21] = 112;
        byArray[22] = 115;
        byArray[23] = 101;
        byArray[24] = 47;
        byArray[25] = 106;
        byArray[26] = 100;
        byArray[27] = 116;
        byArray[28] = 47;
        byArray[29] = 105;
        byArray[30] = 110;
        byArray[31] = 116;
        byArray[32] = 101;
        byArray[33] = 114;
        byArray[34] = 110;
        byArray[35] = 97;
        byArray[36] = 108;
        byArray[37] = 47;
        byArray[38] = 101;
        byArray[39] = 118;
        byArray[40] = 97;
        byArray[41] = 108;
        byArray[42] = 47;
        byArray[43] = 116;
        byArray[44] = 97;
        byArray[45] = 114;
        byArray[46] = 103;
        byArray[47] = 101;
        byArray[48] = 116;
        byArray[49] = 47;
        byArray[50] = 67;
        byArray[51] = 111;
        byArray[52] = 100;
        byArray[53] = 101;
        byArray[54] = 83;
        byArray[55] = 110;
        byArray[56] = 105;
        byArray[57] = 112;
        byArray[58] = 112;
        byArray[59] = 101;
        byArray[60] = 116;
        byArray[61] = 7;
        byArray[63] = 1;
        byArray[64] = 1;
        byArray[66] = 16;
        byArray[67] = 106;
        byArray[68] = 97;
        byArray[69] = 118;
        byArray[70] = 97;
        byArray[71] = 47;
        byArray[72] = 108;
        byArray[73] = 97;
        byArray[74] = 110;
        byArray[75] = 103;
        byArray[76] = 47;
        byArray[77] = 79;
        byArray[78] = 98;
        byArray[79] = 106;
        byArray[80] = 101;
        byArray[81] = 99;
        byArray[82] = 116;
        byArray[83] = 7;
        byArray[85] = 3;
        byArray[86] = 1;
        byArray[88] = 10;
        byArray[89] = 114;
        byArray[90] = 101;
        byArray[91] = 115;
        byArray[92] = 117;
        byArray[93] = 108;
        byArray[94] = 116;
        byArray[95] = 84;
        byArray[96] = 121;
        byArray[97] = 112;
        byArray[98] = 101;
        byArray[99] = 1;
        byArray[101] = 17;
        byArray[102] = 76;
        byArray[103] = 106;
        byArray[104] = 97;
        byArray[105] = 118;
        byArray[106] = 97;
        byArray[107] = 47;
        byArray[108] = 108;
        byArray[109] = 97;
        byArray[110] = 110;
        byArray[111] = 103;
        byArray[112] = 47;
        byArray[113] = 67;
        byArray[114] = 108;
        byArray[115] = 97;
        byArray[116] = 115;
        byArray[117] = 115;
        byArray[118] = 59;
        byArray[119] = 1;
        byArray[121] = 11;
        byArray[122] = 114;
        byArray[123] = 101;
        byArray[124] = 115;
        byArray[125] = 117;
        byArray[126] = 108;
        byArray[127] = 116;
        byArray[128] = 86;
        byArray[129] = 97;
        byArray[130] = 108;
        byArray[131] = 117;
        byArray[132] = 101;
        byArray[133] = 1;
        byArray[135] = 18;
        byArray[136] = 76;
        byArray[137] = 106;
        byArray[138] = 97;
        byArray[139] = 118;
        byArray[140] = 97;
        byArray[141] = 47;
        byArray[142] = 108;
        byArray[143] = 97;
        byArray[144] = 110;
        byArray[145] = 103;
        byArray[146] = 47;
        byArray[147] = 79;
        byArray[148] = 98;
        byArray[149] = 106;
        byArray[150] = 101;
        byArray[151] = 99;
        byArray[152] = 116;
        byArray[153] = 59;
        byArray[154] = 1;
        byArray[156] = 7;
        byArray[157] = 99;
        byArray[158] = 108;
        byArray[159] = 97;
        byArray[160] = 115;
        byArray[161] = 115;
        byArray[162] = 36;
        byArray[163] = 48;
        byArray[164] = 1;
        byArray[166] = 9;
        byArray[167] = 83;
        byArray[168] = 121;
        byArray[169] = 110;
        byArray[170] = 116;
        byArray[171] = 104;
        byArray[172] = 101;
        byArray[173] = 116;
        byArray[174] = 105;
        byArray[175] = 99;
        byArray[176] = 1;
        byArray[178] = 6;
        byArray[179] = 60;
        byArray[180] = 105;
        byArray[181] = 110;
        byArray[182] = 105;
        byArray[183] = 116;
        byArray[184] = 62;
        byArray[185] = 1;
        byArray[187] = 3;
        byArray[188] = 40;
        byArray[189] = 41;
        byArray[190] = 86;
        byArray[191] = 1;
        byArray[193] = 4;
        byArray[194] = 67;
        byArray[195] = 111;
        byArray[196] = 100;
        byArray[197] = 101;
        byArray[198] = 12;
        byArray[200] = 11;
        byArray[202] = 12;
        byArray[203] = 10;
        byArray[205] = 4;
        byArray[207] = 14;
        byArray[208] = 1;
        byArray[210] = 14;
        byArray[211] = 106;
        byArray[212] = 97;
        byArray[213] = 118;
        byArray[214] = 97;
        byArray[215] = 47;
        byArray[216] = 108;
        byArray[217] = 97;
        byArray[218] = 110;
        byArray[219] = 103;
        byArray[220] = 47;
        byArray[221] = 86;
        byArray[222] = 111;
        byArray[223] = 105;
        byArray[224] = 100;
        byArray[225] = 7;
        byArray[227] = 16;
        byArray[228] = 1;
        byArray[230] = 4;
        byArray[231] = 84;
        byArray[232] = 89;
        byArray[233] = 80;
        byArray[234] = 69;
        byArray[235] = 12;
        byArray[237] = 18;
        byArray[239] = 6;
        byArray[240] = 9;
        byArray[242] = 17;
        byArray[244] = 19;
        byArray[245] = 12;
        byArray[247] = 5;
        byArray[249] = 6;
        byArray[250] = 9;
        byArray[252] = 2;
        byArray[254] = 21;
        byArray[255] = 12;
        byArray[257] = 7;
        byArray[259] = 8;
        byArray[260] = 9;
        byArray[262] = 2;
        byArray[264] = 23;
        byArray[265] = 1;
        byArray[267] = 15;
        byArray[268] = 76;
        byArray[269] = 105;
        byArray[270] = 110;
        byArray[271] = 101;
        byArray[272] = 78;
        byArray[273] = 117;
        byArray[274] = 109;
        byArray[275] = 98;
        byArray[276] = 101;
        byArray[277] = 114;
        byArray[278] = 84;
        byArray[279] = 97;
        byArray[280] = 98;
        byArray[281] = 108;
        byArray[282] = 101;
        byArray[283] = 1;
        byArray[285] = 13;
        byArray[286] = 103;
        byArray[287] = 101;
        byArray[288] = 116;
        byArray[289] = 82;
        byArray[290] = 101;
        byArray[291] = 115;
        byArray[292] = 117;
        byArray[293] = 108;
        byArray[294] = 116;
        byArray[295] = 84;
        byArray[296] = 121;
        byArray[297] = 112;
        byArray[298] = 101;
        byArray[299] = 1;
        byArray[301] = 19;
        byArray[302] = 40;
        byArray[303] = 41;
        byArray[304] = 76;
        byArray[305] = 106;
        byArray[306] = 97;
        byArray[307] = 118;
        byArray[308] = 97;
        byArray[309] = 47;
        byArray[310] = 108;
        byArray[311] = 97;
        byArray[312] = 110;
        byArray[313] = 103;
        byArray[314] = 47;
        byArray[315] = 67;
        byArray[316] = 108;
        byArray[317] = 97;
        byArray[318] = 115;
        byArray[319] = 115;
        byArray[320] = 59;
        byArray[321] = 1;
        byArray[323] = 14;
        byArray[324] = 103;
        byArray[325] = 101;
        byArray[326] = 116;
        byArray[327] = 82;
        byArray[328] = 101;
        byArray[329] = 115;
        byArray[330] = 117;
        byArray[331] = 108;
        byArray[332] = 116;
        byArray[333] = 86;
        byArray[334] = 97;
        byArray[335] = 108;
        byArray[336] = 117;
        byArray[337] = 101;
        byArray[338] = 1;
        byArray[340] = 20;
        byArray[341] = 40;
        byArray[342] = 41;
        byArray[343] = 76;
        byArray[344] = 106;
        byArray[345] = 97;
        byArray[346] = 118;
        byArray[347] = 97;
        byArray[348] = 47;
        byArray[349] = 108;
        byArray[350] = 97;
        byArray[351] = 110;
        byArray[352] = 103;
        byArray[353] = 47;
        byArray[354] = 79;
        byArray[355] = 98;
        byArray[356] = 106;
        byArray[357] = 101;
        byArray[358] = 99;
        byArray[359] = 116;
        byArray[360] = 59;
        byArray[361] = 1;
        byArray[363] = 3;
        byArray[364] = 114;
        byArray[365] = 117;
        byArray[366] = 110;
        byArray[367] = 1;
        byArray[369] = 9;
        byArray[370] = 115;
        byArray[371] = 101;
        byArray[372] = 116;
        byArray[373] = 82;
        byArray[374] = 101;
        byArray[375] = 115;
        byArray[376] = 117;
        byArray[377] = 108;
        byArray[378] = 116;
        byArray[379] = 1;
        byArray[381] = 38;
        byArray[382] = 40;
        byArray[383] = 76;
        byArray[384] = 106;
        byArray[385] = 97;
        byArray[386] = 118;
        byArray[387] = 97;
        byArray[388] = 47;
        byArray[389] = 108;
        byArray[390] = 97;
        byArray[391] = 110;
        byArray[392] = 103;
        byArray[393] = 47;
        byArray[394] = 79;
        byArray[395] = 98;
        byArray[396] = 106;
        byArray[397] = 101;
        byArray[398] = 99;
        byArray[399] = 116;
        byArray[400] = 59;
        byArray[401] = 76;
        byArray[402] = 106;
        byArray[403] = 97;
        byArray[404] = 118;
        byArray[405] = 97;
        byArray[406] = 47;
        byArray[407] = 108;
        byArray[408] = 97;
        byArray[409] = 110;
        byArray[410] = 103;
        byArray[411] = 47;
        byArray[412] = 67;
        byArray[413] = 108;
        byArray[414] = 97;
        byArray[415] = 115;
        byArray[416] = 115;
        byArray[417] = 59;
        byArray[418] = 41;
        byArray[419] = 86;
        byArray[420] = 1;
        byArray[422] = 10;
        byArray[423] = 83;
        byArray[424] = 111;
        byArray[425] = 117;
        byArray[426] = 114;
        byArray[427] = 99;
        byArray[428] = 101;
        byArray[429] = 70;
        byArray[430] = 105;
        byArray[431] = 108;
        byArray[432] = 101;
        byArray[433] = 1;
        byArray[435] = 16;
        byArray[436] = 67;
        byArray[437] = 111;
        byArray[438] = 100;
        byArray[439] = 101;
        byArray[440] = 83;
        byArray[441] = 110;
        byArray[442] = 105;
        byArray[443] = 112;
        byArray[444] = 112;
        byArray[445] = 101;
        byArray[446] = 116;
        byArray[447] = 46;
        byArray[448] = 106;
        byArray[449] = 97;
        byArray[450] = 118;
        byArray[451] = 97;
        byArray[453] = 33;
        byArray[455] = 2;
        byArray[457] = 4;
        byArray[461] = 3;
        byArray[463] = 2;
        byArray[465] = 5;
        byArray[467] = 6;
        byArray[471] = 2;
        byArray[473] = 7;
        byArray[475] = 8;
        byArray[479] = 8;
        byArray[481] = 9;
        byArray[483] = 6;
        byArray[485] = 1;
        byArray[487] = 10;
        byArray[493] = 5;
        byArray[495] = 1;
        byArray[497] = 11;
        byArray[499] = 12;
        byArray[501] = 1;
        byArray[503] = 13;
        byArray[507] = 53;
        byArray[509] = 2;
        byArray[511] = 1;
        byArray[515] = 17;
        byArray[516] = 42;
        byArray[517] = -73;
        byArray[519] = 15;
        byArray[520] = 42;
        byArray[521] = -78;
        byArray[523] = 20;
        byArray[524] = -75;
        byArray[526] = 22;
        byArray[527] = 42;
        byArray[528] = 1;
        byArray[529] = -75;
        byArray[531] = 24;
        byArray[532] = -79;
        byArray[536] = 1;
        byArray[538] = 25;
        byArray[542] = 18;
        byArray[544] = 4;
        byArray[548] = 17;
        byArray[550] = 4;
        byArray[552] = 18;
        byArray[554] = 11;
        byArray[556] = 19;
        byArray[558] = 16;
        byArray[560] = 17;
        byArray[562] = 1;
        byArray[564] = 26;
        byArray[566] = 27;
        byArray[568] = 1;
        byArray[570] = 13;
        byArray[574] = 29;
        byArray[576] = 1;
        byArray[578] = 1;
        byArray[582] = 5;
        byArray[583] = 42;
        byArray[584] = -76;
        byArray[586] = 22;
        byArray[587] = -80;
        byArray[591] = 1;
        byArray[593] = 25;
        byArray[597] = 6;
        byArray[599] = 1;
        byArray[603] = 24;
        byArray[605] = 1;
        byArray[607] = 28;
        byArray[609] = 29;
        byArray[611] = 1;
        byArray[613] = 13;
        byArray[617] = 29;
        byArray[619] = 1;
        byArray[621] = 1;
        byArray[625] = 5;
        byArray[626] = 42;
        byArray[627] = -76;
        byArray[629] = 24;
        byArray[630] = -80;
        byArray[634] = 1;
        byArray[636] = 25;
        byArray[640] = 6;
        byArray[642] = 1;
        byArray[646] = 30;
        byArray[648] = 1;
        byArray[650] = 30;
        byArray[652] = 12;
        byArray[654] = 1;
        byArray[656] = 13;
        byArray[660] = 25;
        byArray[664] = 1;
        byArray[668] = 1;
        byArray[669] = -79;
        byArray[673] = 1;
        byArray[675] = 25;
        byArray[679] = 6;
        byArray[681] = 1;
        byArray[685] = 36;
        byArray[687] = 1;
        byArray[689] = 31;
        byArray[691] = 32;
        byArray[693] = 1;
        byArray[695] = 13;
        byArray[699] = 43;
        byArray[701] = 2;
        byArray[703] = 3;
        byArray[707] = 11;
        byArray[708] = 42;
        byArray[709] = 43;
        byArray[710] = -75;
        byArray[712] = 24;
        byArray[713] = 42;
        byArray[714] = 44;
        byArray[715] = -75;
        byArray[717] = 22;
        byArray[718] = -79;
        byArray[722] = 1;
        byArray[724] = 25;
        byArray[728] = 14;
        byArray[730] = 3;
        byArray[734] = 42;
        byArray[736] = 5;
        byArray[738] = 43;
        byArray[740] = 10;
        byArray[742] = 41;
        byArray[744] = 1;
        byArray[746] = 33;
        byArray[750] = 2;
        byArray[752] = 34;
        return byArray;
    }

    public static String getCodeSnippetSource() {
        return "package org.eclipse.jdt.internal.eval.target;\n\n/*\n * (c) Copyright IBM Corp. 2000, 2001.\n * All Rights Reserved.\n */\n/**\n * The root of all code snippet classes. Code snippet classes\n * are supposed to overide the run() method.\n * <p>\n * IMPORTANT NOTE:\n * All methods in this class must be public since this class is going to be loaded by the\n * bootstrap class loader, and the other code snippet support classes might be loaded by \n * another class loader (so their runtime packages are going to be different).\n */\npublic class CodeSnippet {\n\tprivate Class resultType = void.class;\n\tprivate Object resultValue = null;\n/**\n * Returns the result type of the code snippet evaluation.\n */\npublic Class getResultType() {\n\treturn this.resultType;\n}\n/**\n * Returns the result value of the code snippet evaluation.\n */\npublic Object getResultValue() {\n\treturn this.resultValue;\n}\n/**\n * The code snippet. Subclasses must override this method with a transformed code snippet\n * that stores the result using setResult(Class, Object).\n */\npublic void run() {\n}\n/**\n * Stores the result type and value of the code snippet evaluation.\n */\npublic void setResult(Object someResultValue, Class someResultType) {\n\tthis.resultValue = someResultValue;\n\tthis.resultType = someResultType;\n}\n}\n";
    }

    public char[][] getImports() {
        return this.imports;
    }

    public char[] getPackageName() {
        return this.packageName;
    }

    IBinaryType getRootCodeSnippetBinary() {
        if (this.codeSnippetBinary == null) {
            this.codeSnippetBinary = new CodeSnippetSkeleton();
        }
        return this.codeSnippetBinary;
    }

    public char[] getVarClassName() {
        if (this.installedVars == null) {
            return CharOperation.NO_CHAR;
        }
        return CharOperation.concat(this.installedVars.packageName, this.installedVars.className, '.');
    }

    public GlobalVariable newVariable(char[] typeName, char[] name, char[] initializer) {
        GlobalVariable var = new GlobalVariable(typeName, name, initializer);
        if (this.variableCount >= this.variables.length) {
            this.variables = new GlobalVariable[this.variableCount * 2];
            System.arraycopy(this.variables, 0, this.variables, 0, this.variableCount);
        }
        this.variables[this.variableCount++] = var;
        this.varsChanged = true;
        return var;
    }

    public void select(char[] codeSnippet, int selectionSourceStart, int selectionSourceEnd, SearchableEnvironment environment, ISelectionRequestor requestor, Map options, WorkingCopyOwner owner) {
        final char[] className = "CodeSnippetSelection".toCharArray();
        long complianceVersion = CompilerOptions.versionToJdkLevel(options.get("org.eclipse.jdt.core.compiler.compliance"));
        final CodeSnippetToCuMapper mapper = new CodeSnippetToCuMapper(codeSnippet, this.packageName, this.imports, className, this.installedVars == null ? null : this.installedVars.className, this.localVariableNames, this.localVariableTypeNames, this.localVariableModifiers, this.declaringTypeName, this.lineSeparator, complianceVersion);
        ICompilationUnit sourceUnit = new ICompilationUnit(){

            public char[] getFileName() {
                return CharOperation.concat(className, org.eclipse.jdt.internal.core.util.Util.defaultJavaExtension().toCharArray());
            }

            public char[] getContents() {
                return mapper.getCUSource(EvaluationContext.this.lineSeparator);
            }

            public char[] getMainTypeName() {
                return className;
            }

            public char[][] getPackageName() {
                return null;
            }
        };
        SelectionEngine engine = new SelectionEngine(environment, mapper.getSelectionRequestor(requestor), options, owner);
        engine.select(sourceUnit, mapper.startPosOffset + selectionSourceStart, mapper.startPosOffset + selectionSourceEnd);
    }

    public void setImports(char[][] imports) {
        this.imports = imports;
        this.varsChanged = true;
    }

    public void setLineSeparator(String lineSeparator) {
        this.lineSeparator = lineSeparator;
    }

    public void setPackageName(char[] packageName) {
        this.packageName = packageName;
        this.varsChanged = true;
    }
}

