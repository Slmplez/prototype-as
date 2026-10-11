/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.msrquery;

import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.documentation.msrquery.MsrQueryArg;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface MsrQueryProps
extends ARObject {
    public String getMsrQueryName();

    public void setMsrQueryName(String var1);

    public void unsetMsrQueryName();

    public boolean isSetMsrQueryName();

    public EList<MsrQueryArg> getMsrQueryArgs();

    public String getComment();

    public void setComment(String var1);

    public void unsetComment();

    public boolean isSetComment();
}

