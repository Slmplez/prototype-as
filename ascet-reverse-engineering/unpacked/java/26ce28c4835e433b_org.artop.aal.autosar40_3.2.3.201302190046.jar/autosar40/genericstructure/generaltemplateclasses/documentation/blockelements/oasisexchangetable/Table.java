/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.Caption;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.FloatEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.FrameEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.OrientEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.oasisexchangetable.Tgroup;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.paginationandview.Paginateable;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicContent;
import autosar40.genericstructure.varianthandling.VariationPoint;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface Table
extends Paginateable {
    public TopicContent getTopicContent();

    public void setTopicContent(TopicContent var1);

    public String getColsep();

    public void setColsep(String var1);

    public void unsetColsep();

    public boolean isSetColsep();

    public FloatEnum getFloat();

    public void setFloat(FloatEnum var1);

    public void unsetFloat();

    public boolean isSetFloat();

    public FrameEnum getFrame();

    public void setFrame(FrameEnum var1);

    public void unsetFrame();

    public boolean isSetFrame();

    public String getHelpEntry();

    public void setHelpEntry(String var1);

    public void unsetHelpEntry();

    public boolean isSetHelpEntry();

    public OrientEnum getOrient();

    public void setOrient(OrientEnum var1);

    public void unsetOrient();

    public boolean isSetOrient();

    public String getPgwide();

    public void setPgwide(String var1);

    public void unsetPgwide();

    public boolean isSetPgwide();

    public String getRowsep();

    public void setRowsep(String var1);

    public void unsetRowsep();

    public boolean isSetRowsep();

    public String getTabstyle();

    public void setTabstyle(String var1);

    public void unsetTabstyle();

    public boolean isSetTabstyle();

    public Caption getTableCaption();

    public void setTableCaption(Caption var1);

    public EList<Tgroup> getTgroups();

    public VariationPoint getVariationPoint();

    public void setVariationPoint(VariationPoint var1);
}

