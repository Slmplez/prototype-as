/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.GlanguagedatamodelPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.glanguagedatamodel.impl.GlanguagedatamodelFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GlanguagedatamodelFactory
extends EFactory {
    public static final GlanguagedatamodelFactory eINSTANCE = GlanguagedatamodelFactoryImpl.init();

    public GlanguagedatamodelPackage getGlanguagedatamodelPackage();
}

