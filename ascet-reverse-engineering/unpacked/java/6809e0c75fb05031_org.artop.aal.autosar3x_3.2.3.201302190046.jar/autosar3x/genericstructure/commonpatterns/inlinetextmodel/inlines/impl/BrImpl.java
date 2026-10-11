/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.impl;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Br;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.InlinesPackage;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.ecore.EClass;

public class BrImpl
extends ARObjectImpl
implements Br {
    protected BrImpl() {
    }

    protected EClass eStaticClass() {
        return InlinesPackage.Literals.BR;
    }
}

