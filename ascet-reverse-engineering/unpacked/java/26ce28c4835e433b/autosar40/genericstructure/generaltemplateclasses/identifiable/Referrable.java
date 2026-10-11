/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 */
package autosar40.genericstructure.generaltemplateclasses.identifiable;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;

public interface Referrable
extends ARObject,
GReferrable {
    public String getShortName();

    public void setShortName(String var1);

    public void unsetShortName();

    public boolean isSetShortName();
}

