/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EPackage$Registry
 *  org.eclipse.emf.ecore.impl.EFactoryImpl
 *  org.eclipse.emf.ecore.plugin.EcorePlugin
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.impl;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.BlockelementsFactory;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.BlockelementsPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Caption;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.DocumentationBlock;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Url;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.impl.CaptionImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.impl.DocumentationBlockImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.impl.UrlImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class BlockelementsFactoryImpl
extends EFactoryImpl
implements BlockelementsFactory {
    public static BlockelementsFactory init() {
        try {
            BlockelementsFactory theBlockelementsFactory = (BlockelementsFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/schema/r4.0/autosar40/gs/gtc/d/be");
            if (theBlockelementsFactory != null) {
                return theBlockelementsFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new BlockelementsFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createUrl();
            }
            case 1: {
                return this.createCaption();
            }
            case 2: {
                return this.createDocumentationBlock();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public Url createUrl() {
        UrlImpl url = new UrlImpl();
        return url;
    }

    public Caption createCaption() {
        CaptionImpl caption = new CaptionImpl();
        return caption;
    }

    public DocumentationBlock createDocumentationBlock() {
        DocumentationBlockImpl documentationBlock = new DocumentationBlockImpl();
        return documentationBlock;
    }

    public BlockelementsPackage getBlockelementsPackage() {
        return (BlockelementsPackage)this.getEPackage();
    }

    @Deprecated
    public static BlockelementsPackage getPackage() {
        return BlockelementsPackage.eINSTANCE;
    }
}

