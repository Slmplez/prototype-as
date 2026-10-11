/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar21.genericstructure.commonpatterns.admindata;

import autosar21.genericstructure.commonpatterns.admindata.AdminData;
import autosar21.genericstructure.commonpatterns.admindata.AdmindataPackage;
import autosar21.genericstructure.commonpatterns.admindata.CompanyRevisionInfo;
import autosar21.genericstructure.commonpatterns.admindata.CompanySpecificInfo;
import autosar21.genericstructure.commonpatterns.admindata.DocRevision;
import autosar21.genericstructure.commonpatterns.admindata.Modification;
import autosar21.genericstructure.commonpatterns.admindata.impl.AdmindataFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface AdmindataFactory
extends EFactory {
    public static final AdmindataFactory eINSTANCE = AdmindataFactoryImpl.init();

    public AdminData createAdminData();

    public DocRevision createDocRevision();

    public Modification createModification();

    public CompanyRevisionInfo createCompanyRevisionInfo();

    public CompanySpecificInfo createCompanySpecificInfo();

    public AdmindataPackage getAdmindataPackage();
}

