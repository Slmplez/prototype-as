/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EFactory
 */
package autosar3x.genericstructure.commonpatterns.admindata;

import autosar3x.genericstructure.commonpatterns.admindata.AdminData;
import autosar3x.genericstructure.commonpatterns.admindata.AdmindataPackage;
import autosar3x.genericstructure.commonpatterns.admindata.CompanyRevisionInfo;
import autosar3x.genericstructure.commonpatterns.admindata.CompanySpecificInfo;
import autosar3x.genericstructure.commonpatterns.admindata.DocRevision;
import autosar3x.genericstructure.commonpatterns.admindata.Modification;
import autosar3x.genericstructure.commonpatterns.admindata.impl.AdmindataFactoryImpl;
import org.eclipse.emf.ecore.EFactory;

public interface AdmindataFactory
extends EFactory {
    public static final AdmindataFactory eINSTANCE = AdmindataFactoryImpl.init();

    public CompanyRevisionInfo createCompanyRevisionInfo();

    public CompanySpecificInfo createCompanySpecificInfo();

    public DocRevision createDocRevision();

    public Modification createModification();

    public AdminData createAdminData();

    public AdmindataPackage getAdmindataPackage();
}

