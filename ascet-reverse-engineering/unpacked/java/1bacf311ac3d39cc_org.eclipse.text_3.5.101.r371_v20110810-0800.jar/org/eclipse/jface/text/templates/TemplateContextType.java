/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.templates;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.Document;
import org.eclipse.jface.text.templates.TemplateBuffer;
import org.eclipse.jface.text.templates.TemplateContext;
import org.eclipse.jface.text.templates.TemplateException;
import org.eclipse.jface.text.templates.TemplateTranslator;
import org.eclipse.jface.text.templates.TemplateVariable;
import org.eclipse.jface.text.templates.TemplateVariableResolver;
import org.eclipse.text.edits.MalformedTreeException;
import org.eclipse.text.edits.MultiTextEdit;
import org.eclipse.text.edits.RangeMarker;
import org.eclipse.text.edits.ReplaceEdit;
import org.eclipse.text.edits.TextEdit;

public class TemplateContextType {
    private String fId = null;
    private final Map fResolvers = new HashMap();
    private String fName = null;

    public TemplateContextType(String id) {
        this(id, id);
    }

    public TemplateContextType(String id, String name) {
        Assert.isNotNull((Object)id);
        Assert.isNotNull((Object)name);
        this.fId = id;
        this.fName = name;
    }

    public String getId() {
        return this.fId;
    }

    public String getName() {
        return this.fName;
    }

    public TemplateContextType() {
    }

    public final void setId(String id) throws RuntimeException {
        Assert.isNotNull((Object)id);
        Assert.isTrue((this.fId == null ? 1 : 0) != 0);
        this.fId = id;
    }

    public final void setName(String name) {
        Assert.isTrue((this.fName == null ? 1 : 0) != 0);
        this.fName = name;
    }

    public void addResolver(TemplateVariableResolver resolver) {
        Assert.isNotNull((Object)resolver);
        this.fResolvers.put(resolver.getType(), resolver);
    }

    public void removeResolver(TemplateVariableResolver resolver) {
        Assert.isNotNull((Object)resolver);
        this.fResolvers.remove(resolver.getType());
    }

    public void removeAllResolvers() {
        this.fResolvers.clear();
    }

    public Iterator resolvers() {
        return Collections.unmodifiableMap(this.fResolvers).values().iterator();
    }

    protected TemplateVariableResolver getResolver(String type) {
        return (TemplateVariableResolver)this.fResolvers.get(type);
    }

    public void validate(String pattern) throws TemplateException {
        TemplateTranslator translator = new TemplateTranslator();
        TemplateBuffer buffer = translator.translate(pattern);
        this.validateVariables(buffer.getVariables());
    }

    protected void validateVariables(TemplateVariable[] variables) throws TemplateException {
    }

    public void resolve(TemplateBuffer buffer, TemplateContext context) throws MalformedTreeException, BadLocationException {
        Assert.isNotNull((Object)context);
        TemplateVariable[] variables = buffer.getVariables();
        List positions = TemplateContextType.variablesToPositions(variables);
        ArrayList<ReplaceEdit> edits = new ArrayList<ReplaceEdit>(5);
        int i = 0;
        while (i != variables.length) {
            TemplateVariable variable = variables[i];
            if (!variable.isResolved()) {
                this.resolve(variable, context);
            }
            String value = variable.getDefaultValue();
            int[] offsets = variable.getOffsets();
            int k = 0;
            while (k != offsets.length) {
                edits.add(new ReplaceEdit(offsets[k], variable.getInitialLength(), value));
                ++k;
            }
            ++i;
        }
        Document document = new Document(buffer.getString());
        MultiTextEdit edit = new MultiTextEdit(0, document.getLength());
        edit.addChildren(positions.toArray(new TextEdit[positions.size()]));
        edit.addChildren(edits.toArray(new TextEdit[edits.size()]));
        edit.apply(document, 2);
        TemplateContextType.positionsToVariables(positions, variables);
        buffer.setContent(document.get(), variables);
    }

    public void resolve(TemplateVariable variable, TemplateContext context) {
        String type = variable.getType();
        TemplateVariableResolver resolver = (TemplateVariableResolver)this.fResolvers.get(type);
        if (resolver == null) {
            resolver = new TemplateVariableResolver(type, "");
        }
        resolver.resolve(variable, context);
    }

    private static List variablesToPositions(TemplateVariable[] variables) {
        ArrayList<RangeMarker> positions = new ArrayList<RangeMarker>(5);
        int i = 0;
        while (i != variables.length) {
            int[] offsets = variables[i].getOffsets();
            int j = 0;
            while (j != offsets.length) {
                positions.add(new RangeMarker(offsets[j], 0));
                ++j;
            }
            ++i;
        }
        return positions;
    }

    private static void positionsToVariables(List positions, TemplateVariable[] variables) {
        Iterator iterator = positions.iterator();
        int i = 0;
        while (i != variables.length) {
            TemplateVariable variable = variables[i];
            int[] offsets = new int[variable.getOffsets().length];
            int j = 0;
            while (j != offsets.length) {
                offsets[j] = ((TextEdit)iterator.next()).getOffset();
                ++j;
            }
            variable.setOffsets(offsets);
            ++i;
        }
    }
}

