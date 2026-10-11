/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation;

import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.GdocumentationPackage;
import gautosar.ggenericstructure.ggeneraltemplateclasses.gdocumentation.impl.GdocumentationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GdocumentationFactory
extends EFactory {
    public static final GdocumentationFactory eINSTANCE = GdocumentationFactoryImpl.init();

    public GdocumentationPackage getGdocumentationPackage();
}

