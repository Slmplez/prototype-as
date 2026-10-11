/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gcommonstructure.gmodedeclaration;

import gautosar.gcommonstructure.gmodedeclaration.GmodedeclarationPackage;
import gautosar.gcommonstructure.gmodedeclaration.impl.GmodedeclarationFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GmodedeclarationFactory
extends EFactory {
    public static final GmodedeclarationFactory eINSTANCE = GmodedeclarationFactoryImpl.init();

    public GmodedeclarationPackage getGmodedeclarationPackage();
}

