/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.genericstructure.commonpatterns.admindata.impl;

import autosar3x.genericstructure.commonpatterns.admindata.AdmindataPackage;
import autosar3x.genericstructure.commonpatterns.admindata.CompanyRevisionInfo;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.ecore.EClass;

public class CompanyRevisionInfoImpl
extends ARObjectImpl
implements CompanyRevisionInfo {
    protected CompanyRevisionInfoImpl() {
    }

    protected EClass eStaticClass() {
        return AdmindataPackage.Literals.COMPANY_REVISION_INFO;
    }
}

