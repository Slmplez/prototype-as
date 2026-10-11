/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar21.genericstructure.commonpatterns.admindata.impl;

import autosar21.genericstructure.commonpatterns.admindata.AdmindataPackage;
import autosar21.genericstructure.commonpatterns.admindata.CompanySpecificInfo;
import autosar21.genericstructure.infrastructure.impl.ARObjectImpl;
import org.eclipse.emf.ecore.EClass;

public class CompanySpecificInfoImpl
extends ARObjectImpl
implements CompanySpecificInfo {
    protected CompanySpecificInfoImpl() {
    }

    protected EClass eStaticClass() {
        return AdmindataPackage.Literals.COMPANY_SPECIFIC_INFO;
    }
}

