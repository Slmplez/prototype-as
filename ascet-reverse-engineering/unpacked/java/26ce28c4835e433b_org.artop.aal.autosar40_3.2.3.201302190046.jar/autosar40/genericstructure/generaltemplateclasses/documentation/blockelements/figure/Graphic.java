/*
 * Decompiled with CFR 0.152.
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.GraphicFitEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.GraphicNotationEnum;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.figure.LGraphic;
import autosar40.genericstructure.generaltemplateclasses.engineeringobject.EngineeringObject;

public interface Graphic
extends EngineeringObject {
    public LGraphic getLGraphic();

    public void setLGraphic(LGraphic var1);

    public String getEditHeight();

    public void setEditHeight(String var1);

    public void unsetEditHeight();

    public boolean isSetEditHeight();

    public String getEditWidth();

    public void setEditWidth(String var1);

    public void unsetEditWidth();

    public boolean isSetEditWidth();

    public GraphicFitEnum getEditfit();

    public void setEditfit(GraphicFitEnum var1);

    public void unsetEditfit();

    public boolean isSetEditfit();

    public String getEditscale();

    public void setEditscale(String var1);

    public void unsetEditscale();

    public boolean isSetEditscale();

    public String getFilename();

    public void setFilename(String var1);

    public void unsetFilename();

    public boolean isSetFilename();

    public GraphicFitEnum getFit();

    public void setFit(GraphicFitEnum var1);

    public void unsetFit();

    public boolean isSetFit();

    public String getGenerator();

    public void setGenerator(String var1);

    public void unsetGenerator();

    public boolean isSetGenerator();

    public String getHeight();

    public void setHeight(String var1);

    public void unsetHeight();

    public boolean isSetHeight();

    public GraphicFitEnum getHtmlFit();

    public void setHtmlFit(GraphicFitEnum var1);

    public void unsetHtmlFit();

    public boolean isSetHtmlFit();

    public String getHtmlHeight();

    public void setHtmlHeight(String var1);

    public void unsetHtmlHeight();

    public boolean isSetHtmlHeight();

    public String getHtmlScale();

    public void setHtmlScale(String var1);

    public void unsetHtmlScale();

    public boolean isSetHtmlScale();

    public String getHtmlWidth();

    public void setHtmlWidth(String var1);

    public void unsetHtmlWidth();

    public boolean isSetHtmlWidth();

    public GraphicNotationEnum getNotation();

    public void setNotation(GraphicNotationEnum var1);

    public void unsetNotation();

    public boolean isSetNotation();

    public String getScale();

    public void setScale(String var1);

    public void unsetScale();

    public boolean isSetScale();

    public String getWidth();

    public void setWidth(String var1);

    public void unsetWidth();

    public boolean isSetWidth();
}

