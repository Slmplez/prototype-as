/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.genericstructure.commonpatterns.admindata.impl;

import autosar21.genericstructure.commonpatterns.admindata.AdmindataPackage;
import autosar21.genericstructure.commonpatterns.admindata.CompanyRevisionInfo;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
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

