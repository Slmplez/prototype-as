/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar3x.commonstructure.globalconstraints;

import autosar3x.commonstructure.globalconstraints.DataConstrRule;
import autosar3x.commonstructure.globalconstraints.ScaleConstr;
import autosar3x.genericstructure.commonpatterns.enumerations.MonotonyEnum;
import autosar3x.genericstructure.infrastructure.ARObject;
import autosar3x.swcomponent.datatype.localconstraints.Limit;
import autosar3x.swcomponent.datatype.units.Unit;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface PhysConstrs
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

    public Unit getUnit();

    public void setUnit(Unit var1);
}

