/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.documentationonm1;

import autosar40.genericstructure.documentationonm1.Documentation;
import autosar40.genericstructure.documentationonm1.DocumentationContext;
import autosar40.genericstructure.documentationonm1.Documentationonm1Package;
import autosar40.genericstructure.documentationonm1.impl.Documentationonm1FactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface Documentationonm1Factory
extends EFactory {
    public static final Documentationonm1Factory eINSTANCE = Documentationonm1FactoryImpl.init();

    public Documentation createDocumentation();

    public DocumentationContext createDocumentationContext();

    public Documentationonm1Package getDocumentationonm1Package();
}

