/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.constants;

import autosar40.commonstructure.calibrationvalue.SwAxisCont;
import autosar40.commonstructure.calibrationvalue.SwValueCont;
import autosar40.commonstructure.constants.ValueSpecification;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface ApplicationValueSpecification
extends ValueSpecification {
    public String getCategory();

    public void setCategory(String var1);

    public void unsetCategory();

    public boolean isSetCategory();

    public EList<SwAxisCont> getSwAxisConts();

    public SwValueCont getSwValueCont();

    public void setSwValueCont(SwValueCont var1);
}

