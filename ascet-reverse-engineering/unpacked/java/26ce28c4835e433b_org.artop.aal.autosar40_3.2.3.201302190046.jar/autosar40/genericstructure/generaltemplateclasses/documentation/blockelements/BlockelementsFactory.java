/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.BlockelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Caption;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Url;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.impl.BlockelementsFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface BlockelementsFactory
extends EFactory {
    public static final BlockelementsFactory eINSTANCE = BlockelementsFactoryImpl.init();

    public Url createUrl();

    public Caption createCaption();

    public DocumentationBlock createDocumentationBlock();

    public BlockelementsPackage getBlockelementsPackage();
}

