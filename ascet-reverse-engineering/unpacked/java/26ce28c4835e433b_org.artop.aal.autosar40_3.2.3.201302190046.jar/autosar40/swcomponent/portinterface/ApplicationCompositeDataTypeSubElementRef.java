/*
 * Decompiled with CFR 0.152.
 */
package autosar40.swcomponent.portinterface;

import autosar40.swcomponent.portinterface.SubElementRef;
import autosar40.swcomponent.portinterface.instancerefs.ApplicationCompositeElementInPortInterfaceInstanceRef;

public interface ApplicationCompositeDataTypeSubElementRef
extends SubElementRef {
    public ApplicationCompositeElementInPortInterfaceInstanceRef getApplicationCompositeElement();

    public void setApplicationCompositeElement(ApplicationCompositeElementInPortInterfaceInstanceRef var1);
}

