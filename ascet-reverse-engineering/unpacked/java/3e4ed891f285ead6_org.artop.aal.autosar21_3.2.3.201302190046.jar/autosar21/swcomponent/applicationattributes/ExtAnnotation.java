/*
 * Decompiled with CFR 0.152.
 */
package autosar21.swcomponent.applicationattributes;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.applicationattributes.PortAnnotation;

public interface ExtAnnotation
extends ARObject {
    public PortAnnotation getPortAnnotation();

    public void setPortAnnotation(PortAnnotation var1);

    public String getName();

    public void setName(String var1);

    public void unsetName();

    public boolean isSetName();

    public String getValue();

    public void setValue(String var1);

    public void unsetValue();

    public boolean isSetValue();
}

