/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.standardization.keyword;

import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import autosar40.standardization.keyword.KeywordSet;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Keyword
extends Identifiable {
    public KeywordSet getKeywordSet();

    public void setKeywordSet(KeywordSet var1);

    public String getAbbrName();

    public void setAbbrName(String var1);

    public void unsetAbbrName();

    public boolean isSetAbbrName();

    public EList<String> getClassifications();

    public void unsetClassifications();

    public boolean isSetClassifications();
}

