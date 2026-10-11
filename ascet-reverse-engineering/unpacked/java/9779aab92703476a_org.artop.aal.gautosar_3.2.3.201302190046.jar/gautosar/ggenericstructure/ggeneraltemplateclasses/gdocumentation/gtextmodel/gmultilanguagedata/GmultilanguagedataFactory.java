/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.GmultilanguagedataPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.gtextmodel.gmultilanguagedata.impl.GmultilanguagedataFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GmultilanguagedataFactory
extends EFactory {
    public static final GmultilanguagedataFactory eINSTANCE = GmultilanguagedataFactoryImpl.init();

    public GmultilanguagedataPackage getGmultilanguagedataPackage();
}

