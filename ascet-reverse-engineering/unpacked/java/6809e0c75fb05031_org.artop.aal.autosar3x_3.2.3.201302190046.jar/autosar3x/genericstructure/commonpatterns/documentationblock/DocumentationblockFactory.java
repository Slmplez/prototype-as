/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.genericstructure.commonpatterns.documentationblock;

import autosar3x.genericstructure.commonpatterns.documentationblock.DocumentationBlock;
import autosar3x.genericstructure.commonpatterns.documentationblock.DocumentationblockPackage;
import autosar3x.genericstructure.commonpatterns.documentationblock.impl.DocumentationblockFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface DocumentationblockFactory
extends EFactory {
    public static final DocumentationblockFactory eINSTANCE = DocumentationblockFactoryImpl.init();

    public DocumentationBlock createDocumentationBlock();

    public DocumentationblockPackage getDocumentationblockPackage();
}

