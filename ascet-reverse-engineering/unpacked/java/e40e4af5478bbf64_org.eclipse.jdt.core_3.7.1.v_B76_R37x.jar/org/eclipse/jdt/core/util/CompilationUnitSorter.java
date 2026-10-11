/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.text.edits.TextEdit
 *  org.eclipse.text.edits.TextEditGroup
 */
package org.eclipse.jdt.core.util;

import java.util.Comparator;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.internal.core.SortElementsOperation;
import org.eclipse.text.edits.TextEdit;
import org.eclipse.text.edits.TextEditGroup;

public final class CompilationUnitSorter {
    public static final String RELATIVE_ORDER = "relativeOrder";

    private CompilationUnitSorter() {
    }

    private static void checkASTLevel(int level) {
        switch (level) {
            case 2: 
            case 3: 
            case 4: {
                break;
            }
            default: {
                throw new IllegalArgumentException();
            }
        }
    }

    public static void sort(ICompilationUnit compilationUnit, int[] positions, Comparator comparator, int options, IProgressMonitor monitor) throws JavaModelException {
        CompilationUnitSorter.sort(2, compilationUnit, positions, comparator, options, monitor);
    }

    public static void sort(int level, ICompilationUnit compilationUnit, int[] positions, Comparator comparator, int options, IProgressMonitor monitor) throws JavaModelException {
        if (compilationUnit == null || comparator == null) {
            throw new IllegalArgumentException();
        }
        CompilationUnitSorter.checkASTLevel(level);
        IJavaElement[] compilationUnits = new ICompilationUnit[]{compilationUnit};
        SortElementsOperation operation = new SortElementsOperation(level, compilationUnits, positions, comparator);
        operation.runOperation(monitor);
    }

    public static TextEdit sort(CompilationUnit unit, Comparator comparator, int options, TextEditGroup group, IProgressMonitor monitor) throws JavaModelException {
        if (unit == null || comparator == null) {
            throw new IllegalArgumentException();
        }
        SortElementsOperation operation = new SortElementsOperation(4, new IJavaElement[]{unit.getJavaElement()}, null, comparator);
        return operation.calculateEdit(unit, group);
    }
}

