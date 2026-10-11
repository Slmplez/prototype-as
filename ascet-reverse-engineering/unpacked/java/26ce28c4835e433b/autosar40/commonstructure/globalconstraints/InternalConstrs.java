/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.commonstructure.globalconstraints;

import autosar40.commonstructure.globalconstraints.DataConstrRule;
import autosar40.commonstructure.globalconstraints.ScaleConstr;
import autosar40.genericstructure.generaltemplateclasses.arobject.ARObject;
import autosar40.genericstructure.generaltemplateclasses.primitivetypes.MonotonyEnum;
import autosar40.swcomponent.datatype.localconstraints.Limit;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface InternalConstrs
extends ARObject {
    public DataConstrRule getDataConstrRule();

    public void setDataConstrRule(DataConstrRule var1);

    public Limit getLowerLimit();

    public void setLowerLimit(Limit var1);

    public Limit getUpperLimit();

    public void setUpperLimit(Limit var1);

    public EList<ScaleConstr> getScaleConstrs();

    public String getMaxGradient();

    public void setMaxGradient(String var1);

    public void unsetMaxGradient();

    public boolean isSetMaxGradient();

    public String getMaxDiff();

    public void setMaxDiff(String var1);

    public void unsetMaxDiff();

    public boolean isSetMaxDiff();

    public MonotonyEnum getMonotony();

    public void setMonotony(MonotonyEnum var1);

    public void unsetMonotony();

    public boolean isSetMonotony();

    public float getMaxGradientAsFloat();

    public int getMaxGradientAsInteger();

    public int getRadixForMaxGradient();

    public void setMaxGradient(int var1, String var2);

    public float getMaxDiffAsFloat();

    public int getMaxDiffAsInteger();

    public int getRadixForMaxDiff();

    public void setMaxDiff(int var1, String var2);
}

