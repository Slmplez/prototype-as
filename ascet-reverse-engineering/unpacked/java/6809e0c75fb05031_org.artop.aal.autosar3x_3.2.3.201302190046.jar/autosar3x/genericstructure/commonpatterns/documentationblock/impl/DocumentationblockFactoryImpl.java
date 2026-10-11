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
package autosar3x.genericstructure.commonpatterns.documentationblock.impl;

import autosar3x.genericstructure.commonpatterns.documentationblock.DocumentationBlock;
import autosar3x.genericstructure.commonpatterns.documentationblock.DocumentationblockFactory;
import autosar3x.genericstructure.commonpatterns.documentationblock.DocumentationblockPackage;
import autosar3x.genericstructure.commonpatterns.documentationblock.impl.DocumentationBlockImpl;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.impl.EFactoryImpl;
import org.eclipse.emf.ecore.plugin.EcorePlugin;

public class DocumentationblockFactoryImpl
extends EFactoryImpl
implements DocumentationblockFactory {
    public static DocumentationblockFactory init() {
        try {
            DocumentationblockFactory theDocumentationblockFactory = (DocumentationblockFactory)EPackage.Registry.INSTANCE.getEFactory("http://autosar.org/3.2.1/autosar3x/gs/cp/db");
            if (theDocumentationblockFactory != null) {
                return theDocumentationblockFactory;
            }
        }
        catch (Exception exception) {
            EcorePlugin.INSTANCE.log((Object)exception);
        }
        return new DocumentationblockFactoryImpl();
    }

    public EObject create(EClass eClass) {
        switch (eClass.getClassifierID()) {
            case 0: {
                return this.createDocumentationBlock();
            }
        }
        throw new IllegalArgumentException("The class '" + eClass.getName() + "' is not a valid classifier");
    }

    public DocumentationBlock createDocumentationBlock() {
        DocumentationBlockImpl documentationBlock = new DocumentationBlockImpl();
        return documentationBlock;
    }

    public DocumentationblockPackage getDocumentationblockPackage() {
        return (DocumentationblockPackage)this.getEPackage();
    }

    @Deprecated
    public static DocumentationblockPackage getPackage() {
        return DocumentationblockPackage.eINSTANCE;
    }
}

