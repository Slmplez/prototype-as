/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines;

import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Br;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.EType;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Ft;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Ie;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.InlinesPackage;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Std;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Tt;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Url;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Xdoc;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Xfile;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.Xref;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.XrefTarget;
import autosar21.genericstructure.commonpatterns.inlinetextmodel.inlines.impl.InlinesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InlinesFactory
extends EFactory {
    public static final InlinesFactory eINSTANCE = InlinesFactoryImpl.init();

    public Br createBr();

    public EType createEType();

    public Ft createFt();

    public Ie createIe();

    public Std createStd();

    public Tt createTt();

    public Url createUrl();

    public Xdoc createXdoc();

    public Xfile createXfile();

    public Xref createXref();

    public XrefTarget createXrefTarget();

    public InlinesPackage getInlinesPackage();
}

