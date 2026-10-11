/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.jdt.internal.core;

import java.util.HashMap;
import org.eclipse.jdt.core.dom.CompilationUnit;
import org.eclipse.jdt.internal.core.CompilationUnitElementInfo;

public class ASTHolderCUInfo
extends CompilationUnitElementInfo {
    int astLevel;
    boolean resolveBindings;
    int reconcileFlags;
    HashMap problems = null;
    CompilationUnit ast;
}

