/*
 * Decompiled with CFR 0.152.
 */
package com.etas.amd620.core.ComponentMain;

import com.etas.amd620.core.ComponentMain.CustomerSpecificAttributesType;
import com.etas.amd620.core.ComponentMain.ItemBaseT;
import com.etas.amd620.core.ComponentMain.NotesT;

public interface ItemT
extends ItemBaseT {
    public NotesT getNotes();

    public void setNotes(NotesT var1);

    public CustomerSpecificAttributesType getCustomerSpecificAttributes();

    public void setCustomerSpecificAttributes(CustomerSpecificAttributesType var1);
}

