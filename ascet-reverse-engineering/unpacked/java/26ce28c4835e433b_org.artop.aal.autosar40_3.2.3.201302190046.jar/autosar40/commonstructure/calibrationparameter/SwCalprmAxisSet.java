/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.calibrationparameter;

import autosar40.commonstructure.calibrationparameter.SwCalprmAxis;
import autosar40.commonstructure.datadefproperties.SwDataDefPropsContent;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SwCalprmAxisSet
extends ARObject {
    public SwDataDefPropsContent getSwDataDefPropsContent();

    public void setSwDataDefPropsContent(SwDataDefPropsContent var1);

    public EList<SwCalprmAxis> getSwCalprmAxis();
}

