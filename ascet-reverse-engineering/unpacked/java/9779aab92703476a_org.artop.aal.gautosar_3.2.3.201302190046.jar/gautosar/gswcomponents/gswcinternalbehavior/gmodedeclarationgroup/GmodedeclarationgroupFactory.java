/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup;

import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.GmodedeclarationgroupPackage;
import gautosar.gswcomponents.gswcinternalbehavior.gmodedeclarationgroup.impl.GmodedeclarationgroupFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface GmodedeclarationgroupFactory
extends EFactory {
    public static final GmodedeclarationgroupFactory eINSTANCE = GmodedeclarationgroupFactoryImpl.init();

    public GmodedeclarationgroupPackage getGmodedeclarationgroupPackage();
}

