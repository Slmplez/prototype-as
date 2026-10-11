/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 *  org.eclipse.core.runtime.IPath
 */
package org.eclipse.jdt.internal.core;

import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.jdt.core.IClasspathContainer;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.ChangeClasspathOperation;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.util.Util;

public class SetContainerOperation
extends ChangeClasspathOperation {
    IPath containerPath;
    IJavaProject[] affectedProjects;
    IClasspathContainer[] respectiveContainers;

    public SetContainerOperation(IPath containerPath, IJavaProject[] affectedProjects, IClasspathContainer[] respectiveContainers) {
        super(new IJavaElement[]{JavaModelManager.getJavaModelManager().getJavaModel()}, !ResourcesPlugin.getWorkspace().isTreeLocked());
        this.containerPath = containerPath;
        this.affectedProjects = affectedProjects;
        this.respectiveContainers = respectiveContainers;
    }

    /*
     * Exception decompiling
     */
    protected void executeOperation() throws JavaModelException {
        /*
         * This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
         * 
         * org.benf.cfr.reader.util.ConfusedCFRException: Tried to end blocks [18[DOLOOP]], but top level block is 19[UNCONDITIONALDOLOOP]
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.processEndingBlocks(Op04StructuredStatement.java:435)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op04StructuredStatement.buildNestedBlocks(Op04StructuredStatement.java:484)
         *     at org.benf.cfr.reader.bytecode.analysis.opgraph.Op03SimpleStatement.createInitialStructuredBlock(Op03SimpleStatement.java:736)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisInner(CodeAnalyser.java:850)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysisOrWrapFail(CodeAnalyser.java:278)
         *     at org.benf.cfr.reader.bytecode.CodeAnalyser.getAnalysis(CodeAnalyser.java:201)
         *     at org.benf.cfr.reader.entities.attributes.AttributeCode.analyse(AttributeCode.java:94)
         *     at org.benf.cfr.reader.entities.Method.analyse(Method.java:531)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseMid(ClassFile.java:1055)
         *     at org.benf.cfr.reader.entities.ClassFile.analyseTop(ClassFile.java:942)
         *     at org.benf.cfr.reader.Driver.doJarVersionTypes(Driver.java:257)
         *     at org.benf.cfr.reader.Driver.doJar(Driver.java:139)
         *     at org.benf.cfr.reader.CfrDriverImpl.analyse(CfrDriverImpl.java:76)
         *     at org.benf.cfr.reader.Main.main(Main.java:54)
         */
        throw new IllegalStateException("Decompilation failed");
    }

    private void verbose_failure(CoreException e) {
        Util.verbose("CPContainer SET  - FAILED DUE TO EXCEPTION\n\tcontainer path: " + this.containerPath, System.err);
        e.printStackTrace();
    }

    private void verbose_update_project(JavaProject affectedProject) {
        Util.verbose("CPContainer SET  - updating affected project due to setting container\n\tproject: " + affectedProject.getElementName() + '\n' + "\tcontainer path: " + this.containerPath);
    }

    private void verbose_set_container() {
        Util.verbose("CPContainer SET  - setting container\n\tcontainer path: " + this.containerPath + '\n' + "\tprojects: {" + org.eclipse.jdt.internal.compiler.util.Util.toString(this.affectedProjects, new Util.Displayable(){

            public String displayString(Object o) {
                return ((IJavaProject)o).getElementName();
            }
        }) + "}\n\tvalues: {\n" + org.eclipse.jdt.internal.compiler.util.Util.toString(this.respectiveContainers, new Util.Displayable(){

            public String displayString(Object o) {
                StringBuffer buffer = new StringBuffer("\t\t");
                if (o == null) {
                    buffer.append("<null>");
                    return buffer.toString();
                }
                IClasspathContainer container = (IClasspathContainer)o;
                buffer.append(container.getDescription());
                buffer.append(" {\n");
                IClasspathEntry[] entries = container.getClasspathEntries();
                if (entries != null) {
                    int i = 0;
                    while (i < entries.length) {
                        buffer.append(" \t\t\t");
                        buffer.append(entries[i]);
                        buffer.append('\n');
                        ++i;
                    }
                }
                buffer.append(" \t\t}");
                return buffer.toString();
            }
        }) + "\n\t}");
    }

    private void verbose_set_container_invocation_trace() {
        Util.verbose("CPContainer SET  - setting container\n\tinvocation stack trace:");
        new Exception("<Fake exception>").printStackTrace(System.out);
    }
}

