/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.ecuresource;

import autosar40.ecuresource.hwelementcategory.HwAttributeValue;
import autosar40.ecuresource.hwelementcategory.HwCategory;
import autosar40.ecuresource.hwelementcategory.HwType;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Referrable;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface HwDescriptionEntity
extends Referrable {
    public HwType getHwType();

    public void setHwType(HwType var1);

    public EList<HwCategory> getHwCategories();

    public EList<HwAttributeValue> getHwAttributeValues();
}

