/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.GinlinetextmodelPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.ginlinetextmodel.impl.GinlinetextmodelFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GinlinetextmodelFactory
extends EFactory {
    public static final GinlinetextmodelFactory eINSTANCE = GinlinetextmodelFactoryImpl.init();

    public GinlinetextmodelPackage getGinlinetextmodelPackage();
}

