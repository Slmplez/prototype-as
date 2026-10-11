/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines;

import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Br;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.EType;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Ft;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Ie;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.InlinesPackage;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Std;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Tt;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Url;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Xdoc;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Xfile;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.Xref;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.XrefTarget;
import autosar3x.genericstructure.commonpatterns.inlinetextmodel.inlines.impl.InlinesFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface InlinesFactory
extends EFactory {
    public static final InlinesFactory eINSTANCE = InlinesFactoryImpl.init();

    public Br createBr();

    public EType createEType();

    public Ft createFt();

    public Tt createTt();

    public Ie createIe();

    public Std createStd();

    public XrefTarget createXrefTarget();

    public Xref createXref();

    public Url createUrl();

    public Xfile createXfile();

    public Xdoc createXdoc();

    public InlinesPackage getInlinesPackage();
}

