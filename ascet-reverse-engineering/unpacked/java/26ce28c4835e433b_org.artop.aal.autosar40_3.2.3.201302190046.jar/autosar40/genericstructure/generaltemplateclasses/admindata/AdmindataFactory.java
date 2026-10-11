/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar40.genericstructure.generaltemplateclasses.admindata;

import autosar40.genericstructure.generaltemplateclasses.admindata.AdminData;
import autosar40.genericstructure.generaltemplateclasses.admindata.AdmindataPackage;
import autosar40.genericstructure.generaltemplateclasses.admindata.DocRevision;
import autosar40.genericstructure.generaltemplateclasses.admindata.Modification;
import autosar40.genericstructure.generaltemplateclasses.admindata.impl.AdmindataFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface AdmindataFactory
extends EFactory {
    public static final AdmindataFactory eINSTANCE = AdmindataFactoryImpl.init();

    public DocRevision createDocRevision();

    public Modification createModification();

    public AdminData createAdminData();

    public AdmindataPackage getAdmindataPackage();
}

