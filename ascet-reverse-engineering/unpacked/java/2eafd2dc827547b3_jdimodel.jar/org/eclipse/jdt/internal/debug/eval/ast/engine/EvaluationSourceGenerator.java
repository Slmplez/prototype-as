/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.debug.core.DebugException
 *  org.eclipse.jdt.core.IJavaProject
 *  org.eclipse.jdt.core.IType
 *  org.eclipse.jdt.core.dom.ASTParser
 *  org.eclipse.jdt.core.dom.ASTVisitor
 *  org.eclipse.jdt.core.dom.CompilationUnit
 */
package org.eclipse.jdt.internal.debug.eval.ast.engine;

import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.debug.core.DebugException;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.IType;
import org.eclipse.jdt.core.dom.ASTParser;
import org.eclipse.jdt.core.dom.ASTVisitor;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.debug.core.IJavaReferenceType;
import org.eclipse.jdt.internal.debug.core.JDIDebugPlugin;
import org.eclipse.jdt.internal.debug.core.JavaDebugUtils;
import org.eclipse.jdt.internal.debug.core.model.JDIReferenceType;
import org.eclipse.jdt.internal.debug.eval.ast.engine.BinaryBasedSourceGenerator;
import org.eclipse.jdt.internal.debug.eval.ast.engine.SourceBasedSourceGenerator;

public class EvaluationSourceGenerator {
    private String fCodeSnippet;
    private String[] fLocalVariableTypeNames;
    private String[] fLocalVariableNames;
    private String fSource;
    private String fCompilationUnitName;
    private int fSnippetStartPosition;
    private int fRunMethodStartPosition;
    private int fRunMethodLength;

    public EvaluationSourceGenerator(String[] localVariableTypesNames, String[] localVariableNames, String codeSnippet) {
        this.fLocalVariableTypeNames = localVariableTypesNames;
        this.fLocalVariableNames = localVariableNames;
        this.fCodeSnippet = this.getCompleteSnippet(codeSnippet);
    }

    public EvaluationSourceGenerator(String codeSnippet) {
        this(new String[0], new String[0], codeSnippet);
    }

    protected String getCompleteSnippet(String codeSnippet) {
        if (this.isExpression(codeSnippet)) {
            codeSnippet = "return " + codeSnippet + ';';
        }
        return codeSnippet;
    }

    protected boolean isExpression(String codeSnippet) {
        boolean inString = false;
        byte[] chars = codeSnippet.getBytes();
        int i = 0;
        int numChars = chars.length;
        while (i < numChars) {
            switch (chars[i]) {
                case 92: {
                    if (!inString) break;
                    ++i;
                    break;
                }
                case 34: 
                case 39: {
                    inString = !inString;
                    break;
                }
                case 59: {
                    if (inString) break;
                    return false;
                }
            }
            ++i;
        }
        return true;
    }

    public String getCompilationUnitName() {
        return this.fCompilationUnitName;
    }

    public int getSnippetStart() {
        return this.fSnippetStartPosition;
    }

    public int getRunMethodStart() {
        return this.fRunMethodStartPosition;
    }

    public int getRunMethodLength() {
        return this.fRunMethodLength;
    }

    protected void setSnippetStart(int position) {
        this.fSnippetStartPosition = position;
    }

    protected void setRunMethodStart(int position) {
        this.fRunMethodStartPosition = position;
    }

    protected void setRunMethodLength(int length) {
        this.fRunMethodLength = length;
    }

    public String getSnippet() {
        return this.fCodeSnippet;
    }

    private void createEvaluationSourceFromSource(String source, IType type, boolean createInAStaticMethod, IJavaProject project) throws DebugException {
        ASTParser parser = ASTParser.newParser((int)4);
        parser.setSource(source.toCharArray());
        Map options = EvaluationSourceGenerator.getCompilerOptions(project);
        String sourceLevel = project.getOption("org.eclipse.jdt.core.compiler.source", true);
        parser.setCompilerOptions(options);
        CompilationUnit unit = (CompilationUnit)parser.createAST(null);
        SourceBasedSourceGenerator visitor = new SourceBasedSourceGenerator(type, createInAStaticMethod, this.fLocalVariableTypeNames, this.fLocalVariableNames, this.fCodeSnippet, sourceLevel);
        unit.accept((ASTVisitor)visitor);
        if (visitor.hasError()) {
            throw new DebugException((IStatus)new Status(4, JDIDebugPlugin.getUniqueIdentifier(), 0, visitor.getError(), null));
        }
        String sourceRes = visitor.getSource();
        if (sourceRes == null) {
            return;
        }
        this.setSource(sourceRes);
        this.setCompilationUnitName(visitor.getCompilationUnitName());
        this.setSnippetStart(visitor.getSnippetStart());
        this.setRunMethodStart(visitor.getRunMethodStart());
        this.setRunMethodLength(visitor.getRunMethodLength());
    }

    public static Map getCompilerOptions(IJavaProject project) {
        Map options = project.getOptions(true);
        Iterator iter = options.keySet().iterator();
        while (iter.hasNext()) {
            String key = (String)iter.next();
            String value = (String)options.get(key);
            if (!"error".equals(value) && !"warning".equals(value)) continue;
            options.put(key, "ignore");
        }
        options.put("org.eclipse.jdt.core.compiler.taskTags", "");
        return options;
    }

    private void createEvaluationSourceFromJDIObject(BinaryBasedSourceGenerator objectToEvaluationSourceMapper) {
        this.setCompilationUnitName(objectToEvaluationSourceMapper.getCompilationUnitName());
        this.setSnippetStart(objectToEvaluationSourceMapper.getSnippetStart());
        this.setRunMethodStart(objectToEvaluationSourceMapper.getRunMethodStart());
        this.setRunMethodLength(this.fCodeSnippet.length() + objectToEvaluationSourceMapper.getRunMethodLength());
        this.setSource(objectToEvaluationSourceMapper.getSource().insert(objectToEvaluationSourceMapper.getCodeSnippetPosition(), this.fCodeSnippet).toString());
    }

    private BinaryBasedSourceGenerator getInstanceSourceMapper(JDIReferenceType referenceType, boolean isInStaticMethod, IJavaProject project) {
        String sourceLevel = project.getOption("org.eclipse.jdt.core.compiler.source", true);
        BinaryBasedSourceGenerator objectToEvaluationSourceMapper = new BinaryBasedSourceGenerator(this.fLocalVariableTypeNames, this.fLocalVariableNames, isInStaticMethod, sourceLevel);
        objectToEvaluationSourceMapper.buildSource(referenceType);
        return objectToEvaluationSourceMapper;
    }

    public String getSource(IJavaReferenceType type, IJavaProject javaProject, boolean isStatic) throws CoreException {
        if (this.fSource == null) {
            IType iType = JavaDebugUtils.resolveType(type);
            if (iType != null && !iType.isInterface()) {
                String baseSource = null;
                baseSource = iType.isBinary() ? iType.getClassFile().getSource() : iType.getCompilationUnit().getSource();
                if (baseSource != null) {
                    this.createEvaluationSourceFromSource(baseSource, iType, isStatic, javaProject);
                }
            }
            if (this.fSource == null) {
                BinaryBasedSourceGenerator mapper = this.getInstanceSourceMapper((JDIReferenceType)type, isStatic, javaProject);
                this.createEvaluationSourceFromJDIObject(mapper);
            }
        }
        return this.fSource;
    }

    protected void setCompilationUnitName(String name) {
        this.fCompilationUnitName = name;
    }

    protected void setSource(String source) {
        this.fSource = source;
    }
}

