/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.ecore.EClass
 */
package autosar3x.genericstructure.commonpatterns.admindata.impl;

import autosar3x.genericstructure.commonpatterns.admindata.AdmindataPackage;
import autosar3x.genericstructure.commonpatterns.admindata.CompanySpecificInfo;
import autosar3x.genericstructure.infrastructure.impl.ARObjectImpl;
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

