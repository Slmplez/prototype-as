/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.msrquery;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryProps;

public interface MsrQueryArg
extends ARObject {
    public MsrQueryProps getMsrQueryProps();

    public void setMsrQueryProps(MsrQueryProps var1);

    public String getArg();

    public void setArg(String var1);

    public void unsetArg();

    public boolean isSetArg();

    public String getSi();

    public void setSi(String var1);

    public void unsetSi();

    public boolean isSetSi();
}

