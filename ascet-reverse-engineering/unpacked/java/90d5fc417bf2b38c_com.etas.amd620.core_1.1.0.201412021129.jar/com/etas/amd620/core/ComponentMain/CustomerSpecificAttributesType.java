/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.ecore.EObject
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.AccessModesT;
import com.etas.amd620.core.ComponentMain.ConfigurationManagementT;
import com.etas.amd620.core.ComponentMain.GenericDataT;
import com.etas.amd620.core.ComponentMain.RequirementsManagementT;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.ecore.EObject;

public interface CustomerSpecificAttributesType
extends EObject {
    public ConfigurationManagementT getConfigurationManagement();

    public void setConfigurationManagement(ConfigurationManagementT var1);

    public RequirementsManagementT getRequirementsManagement();

    public void setRequirementsManagement(RequirementsManagementT var1);

    public AccessModesT getAccessManagement();

    public void setAccessManagement(AccessModesT var1);

    public EList<GenericDataT> getCustomerData();
}

