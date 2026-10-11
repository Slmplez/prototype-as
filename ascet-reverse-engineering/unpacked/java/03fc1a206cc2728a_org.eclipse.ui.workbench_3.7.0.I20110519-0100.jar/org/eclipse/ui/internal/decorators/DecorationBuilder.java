/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.viewers.DecorationContext
 *  org.eclipse.jface.viewers.IDecoration
 *  org.eclipse.jface.viewers.IDecorationContext
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Font
 */
package org.eclipse.ui.internal.decorators;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.viewers.DecorationContext;
import org.eclipse.jface.viewers.IDecoration;
import org.eclipse.jface.viewers.IDecorationContext;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Font;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.decorators.DecorationResult;
import org.eclipse.ui.internal.decorators.LightweightDecoratorDefinition;

public class DecorationBuilder
implements IDecoration {
    private static int DECORATOR_ARRAY_SIZE = 6;
    private List prefixes = new ArrayList();
    private List suffixes = new ArrayList();
    private ImageDescriptor[] descriptors = new ImageDescriptor[DECORATOR_ARRAY_SIZE];
    private Color foregroundColor;
    private Color backgroundColor;
    private Font font;
    LightweightDecoratorDefinition currentDefinition;
    private boolean valueSet = false;
    private final IDecorationContext context;

    DecorationBuilder() {
        this(DecorationContext.DEFAULT_CONTEXT);
    }

    public DecorationBuilder(IDecorationContext context) {
        this.context = context;
    }

    void setCurrentDefinition(LightweightDecoratorDefinition definition) {
        this.currentDefinition = definition;
    }

    public void addOverlay(ImageDescriptor overlay) {
        int quadrant = this.currentDefinition.getQuadrant();
        if (this.descriptors[quadrant] == null) {
            this.descriptors[quadrant] = overlay;
        }
        this.valueSet = true;
    }

    public void addOverlay(ImageDescriptor overlay, int quadrant) {
        if (quadrant >= 0 && quadrant < DECORATOR_ARRAY_SIZE) {
            if (this.descriptors[quadrant] == null) {
                this.descriptors[quadrant] = overlay;
            }
            this.valueSet = true;
        } else {
            WorkbenchPlugin.log("Unable to apply decoration for " + this.currentDefinition.getId() + " invalid quadrant: " + quadrant);
        }
    }

    public void addPrefix(String prefixString) {
        this.prefixes.add(prefixString);
        this.valueSet = true;
    }

    public void addSuffix(String suffixString) {
        this.suffixes.add(suffixString);
        this.valueSet = true;
    }

    DecorationResult createResult() {
        Object propertyValue;
        boolean clearReplacementImage = true;
        if (this.context != null && (propertyValue = this.context.getProperty("org.eclipse.jface.viewers.IDecoration.disableReplace")) instanceof Boolean && ((Boolean)propertyValue).booleanValue()) {
            clearReplacementImage = false;
        }
        if (clearReplacementImage) {
            this.descriptors[5] = null;
        }
        DecorationResult newResult = new DecorationResult(new ArrayList(this.prefixes), new ArrayList(this.suffixes), this.descriptors, this.foregroundColor, this.backgroundColor, this.font);
        return newResult;
    }

    void clearContents() {
        this.prefixes.clear();
        this.suffixes.clear();
        this.descriptors = new ImageDescriptor[DECORATOR_ARRAY_SIZE];
        this.valueSet = false;
    }

    boolean hasValue() {
        return this.valueSet;
    }

    void applyResult(DecorationResult result) {
        this.prefixes.addAll(result.getPrefixes());
        this.suffixes.addAll(result.getSuffixes());
        ImageDescriptor[] resultDescriptors = result.getDescriptors();
        if (resultDescriptors != null) {
            int i = 0;
            while (i < this.descriptors.length) {
                if (resultDescriptors[i] != null) {
                    this.descriptors[i] = resultDescriptors[i];
                }
                ++i;
            }
        }
        this.setForegroundColor(result.getForegroundColor());
        this.setBackgroundColor(result.getBackgroundColor());
        this.setFont(result.getFont());
        this.valueSet = true;
    }

    public void setBackgroundColor(Color bgColor) {
        this.backgroundColor = bgColor;
        this.valueSet = true;
    }

    public void setFont(Font newFont) {
        this.font = newFont;
        this.valueSet = true;
    }

    public void setForegroundColor(Color fgColor) {
        this.foregroundColor = fgColor;
        this.valueSet = true;
    }

    public IDecorationContext getDecorationContext() {
        return this.context;
    }
}

