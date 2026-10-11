/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.resources.IMarker
 *  org.eclipse.core.resources.ResourcesPlugin
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.jdt.internal.core.eval;

import org.eclipse.core.resources.IMarker;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.eval.ICodeSnippetRequestor;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.eval.IRequestor;

public class RequestorWrapper
implements IRequestor {
    ICodeSnippetRequestor requestor;

    public RequestorWrapper(ICodeSnippetRequestor requestor) {
        this.requestor = requestor;
    }

    public boolean acceptClassFiles(ClassFile[] classFiles, char[] codeSnippetClassName) {
        int length = classFiles.length;
        byte[][] classFileBytes = new byte[length][];
        String[][] compoundNames = new String[length][];
        int i = 0;
        while (i < length) {
            ClassFile classFile = classFiles[i];
            classFileBytes[i] = classFile.getBytes();
            char[][] classFileCompundName = classFile.getCompoundName();
            int length2 = classFileCompundName.length;
            String[] compoundName = new String[length2];
            int j = 0;
            while (j < length2) {
                compoundName[j] = new String(classFileCompundName[j]);
                ++j;
            }
            compoundNames[i] = compoundName;
            ++i;
        }
        return this.requestor.acceptClassFiles(classFileBytes, compoundNames, codeSnippetClassName == null ? null : new String(codeSnippetClassName));
    }

    public void acceptProblem(CategorizedProblem problem, char[] fragmentSource, int fragmentKind) {
        try {
            IMarker marker = ResourcesPlugin.getWorkspace().getRoot().createMarker("org.eclipse.jdt.core.transient_problem");
            marker.setAttribute("id", problem.getID());
            marker.setAttribute("charStart", problem.getSourceStart());
            marker.setAttribute("charEnd", problem.getSourceEnd() + 1);
            marker.setAttribute("lineNumber", problem.getSourceLineNumber());
            marker.setAttribute("message", (Object)problem.getMessage());
            marker.setAttribute("severity", problem.isWarning() ? 1 : 2);
            marker.setAttribute("sourceId", (Object)"JDT");
            this.requestor.acceptProblem(marker, new String(fragmentSource), fragmentKind);
        }
        catch (CoreException e) {
            e.printStackTrace();
        }
    }
}

