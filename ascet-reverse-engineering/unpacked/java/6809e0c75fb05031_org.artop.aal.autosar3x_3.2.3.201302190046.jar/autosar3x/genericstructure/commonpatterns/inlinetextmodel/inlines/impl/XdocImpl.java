/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.impl;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.InlinesPackage;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Xdoc;
import autosar3x.genericstructure.infrastructure.identifiable.impl.IdentifiableImpl;
import org.eclipse.emf.ecore.EClass;

public class XdocImpl
extends IdentifiableImpl
implements Xdoc {
    protected XdocImpl() {
    }

    protected EClass eStaticClass() {
        return InlinesPackage.Literals.XDOC;
    }
}

