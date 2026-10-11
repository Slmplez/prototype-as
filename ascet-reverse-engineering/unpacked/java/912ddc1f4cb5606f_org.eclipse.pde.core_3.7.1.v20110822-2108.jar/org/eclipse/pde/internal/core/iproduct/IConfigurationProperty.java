/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.pde.internal.core.iproduct;

import org.eclipse.pde.internal.core.iproduct.IProductObject;

public interface IConfigurationProperty
extends IProductObject {
    public static final String P_NAME = "name";
    public static final String P_VALUE = "value";

    public String getName();

    public void setName(String var1);

    public String getValue();

    public void setValue(String var1);
}

