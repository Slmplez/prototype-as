/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.expressions.EvaluationResult
 *  org.eclipse.core.expressions.Expression
 *  org.eclipse.core.expressions.ExpressionConverter
 *  org.eclipse.core.expressions.IEvaluationContext
 *  org.eclipse.core.runtime.CoreException
 */
package org.eclipse.help.internal;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.eclipse.core.expressions.EvaluationResult;
import org.eclipse.core.expressions.Expression;
import org.eclipse.core.expressions.ExpressionConverter;
import org.eclipse.core.expressions.IEvaluationContext;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.help.IUAElement;
import org.eclipse.help.internal.HelpPlugin;
import org.eclipse.help.internal.UAElementFactory;
import org.eclipse.help.internal.dynamic.FilterResolver;
import org.eclipse.help.internal.entityresolver.LocalEntityResolver;
import org.eclipse.help.internal.util.ProductPreferences;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;

public class UAElement
implements IUAElement {
    private static final String ELEMENT_FILTER = "filter";
    private static final String ATTRIBUTE_FILTER = "filter";
    private static final String ATTRIBUTE_NAME = "name";
    private static final String ATTRIBUTE_VALUE = "value";
    private static DocumentBuilder builder;
    private static Document document;
    private Element element;
    private UAElement parent;
    protected List children;
    private Filter[] filters;
    private Expression enablementExpression;
    private IUAElement src;

    public UAElement(Element element) {
        this.element = element;
    }

    public UAElement(String name) {
        this.element = UAElement.getDocument().createElement(name);
    }

    public UAElement(String name, IUAElement src) {
        this(name);
        if (src instanceof UAElement) {
            this.copyFilters(src);
        } else {
            this.src = src;
        }
    }

    private void copyFilters(IUAElement src) {
        UAElement sourceElement = (UAElement)src;
        String filter = sourceElement.getAttribute("filter");
        if (filter != null && filter.length() > 0) {
            this.setAttribute("filter", filter);
        }
        this.filters = sourceElement.getFilterElements();
        this.enablementExpression = sourceElement.enablementExpression;
        this.src = sourceElement.src;
    }

    private Filter[] getFilterElements() {
        if (this.filters == null) {
            ArrayList<Filter> list = new ArrayList<Filter>();
            if (this.element.hasChildNodes()) {
                Node node = this.element.getFirstChild();
                while (node != null) {
                    if (node.getNodeType() == 1) {
                        String elementKind = node.getNodeName();
                        if ("enablement".equals(elementKind)) {
                            Element enablement = (Element)node;
                            try {
                                this.enablementExpression = ExpressionConverter.getDefault().perform(enablement);
                            }
                            catch (CoreException coreException) {}
                        } else if ("filter".equals(elementKind)) {
                            Element filter = (Element)node;
                            String filterName = filter.getAttribute(ATTRIBUTE_NAME);
                            String value = filter.getAttribute(ATTRIBUTE_VALUE);
                            if (filterName.length() > 0 && value.length() > 0) {
                                boolean isNegated = false;
                                if (value.startsWith("!")) {
                                    isNegated = true;
                                    value = value.substring(1);
                                }
                                if (filterName.length() > 0 && value.length() > 0) {
                                    list.add(new Filter(filterName, value, isNegated));
                                }
                            }
                        }
                    }
                    node = node.getNextSibling();
                }
            }
            this.filters = list.toArray(new Filter[list.size()]);
        }
        return this.filters;
    }

    public void appendChild(UAElement uaElementToAppend) {
        this.importElement(uaElementToAppend);
        this.element.appendChild(uaElementToAppend.element);
        uaElementToAppend.parent = this;
        if (this.children != null) {
            this.children.add(uaElementToAppend);
        }
    }

    public void appendChildren(IUAElement[] children) {
        int i = 0;
        while (i < children.length) {
            this.appendChild(children[i] instanceof UAElement ? (UAElement)children[i] : UAElementFactory.newElement(children[i]));
            ++i;
        }
    }

    public synchronized String getAttribute(String name) {
        String value = this.element.getAttribute(name);
        if (value != null && value.length() > 0) {
            return value;
        }
        return null;
    }

    public synchronized IUAElement[] getChildren() {
        if (this.children == null) {
            if (this.element.hasChildNodes()) {
                this.children = new ArrayList(4);
                Node node = this.element.getFirstChild();
                while (node != null) {
                    UAElement uaElement;
                    if (node.getNodeType() == 1 && (uaElement = UAElementFactory.newElement((Element)node)) != null) {
                        uaElement.parent = this;
                        this.children.add(uaElement);
                    }
                    node = node.getNextSibling();
                }
            } else {
                return new UAElement[0];
            }
        }
        return this.children.toArray(new UAElement[this.children.size()]);
    }

    public Object getChildren(Class clazz) {
        IUAElement[] children = this.getChildren();
        if (children.length > 0) {
            ArrayList<IUAElement> list = new ArrayList<IUAElement>();
            int i = 0;
            while (i < children.length) {
                IUAElement child = children[i];
                if (clazz.isAssignableFrom(child.getClass())) {
                    list.add(child);
                }
                ++i;
            }
            return list.toArray((Object[])Array.newInstance(clazz, list.size()));
        }
        return Array.newInstance(clazz, 0);
    }

    public String getElementName() {
        return this.element.getNodeName();
    }

    private static Document getDocument() {
        if (document == null) {
            if (builder == null) {
                try {
                    builder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
                    builder.setEntityResolver(new LocalEntityResolver());
                }
                catch (ParserConfigurationException e) {
                    String msg = "Error creating document builder";
                    HelpPlugin.logError(msg, e);
                }
            }
            document = builder.newDocument();
        }
        return document;
    }

    public UAElement getParentElement() {
        return this.parent;
    }

    public void insertBefore(UAElement newChild, UAElement refChild) {
        this.importElement(newChild);
        this.element.insertBefore(newChild.element, refChild.element);
        newChild.parent = this;
        this.getChildren();
        if (this.children != null) {
            int index = this.children.indexOf(refChild);
            if (index < 0) {
                this.children = null;
            } else {
                this.children.add(index, newChild);
            }
        }
    }

    public boolean isEnabled(IEvaluationContext context) {
        if (!ProductPreferences.useEnablementFilters()) {
            return true;
        }
        if (this.src != null) {
            return this.src.isEnabled(context);
        }
        String filter = this.getAttribute("filter");
        if (filter != null) {
            return this.isEnabledByFilterAttribute(filter);
        }
        Filter[] filterElements = this.getFilterElements();
        int i = 0;
        while (i < filterElements.length) {
            if (!this.isFilterEnabled(filterElements[i])) {
                return false;
            }
            ++i;
        }
        if (this.enablementExpression != null) {
            try {
                return this.enablementExpression.evaluate(context) == EvaluationResult.TRUE;
            }
            catch (CoreException coreException) {
                return false;
            }
        }
        return true;
    }

    public void removeChild(UAElement elementToRemove) {
        this.element.removeChild(elementToRemove.element);
        elementToRemove.parent = null;
        if (this.children != null && !this.children.remove(elementToRemove)) {
            this.children = null;
        }
    }

    public void setAttribute(String name, String value) {
        this.element.setAttribute(name, value);
    }

    private void importElement(UAElement uaElementToImport) {
        Element elementToImport = uaElementToImport.element;
        Document ownerDocument = this.element.getOwnerDocument();
        if (!ownerDocument.equals(elementToImport.getOwnerDocument())) {
            elementToImport = (Element)ownerDocument.importNode(elementToImport, true);
            uaElementToImport.children = null;
        } else if (elementToImport.getParentNode() != null) {
            elementToImport = (Element)ownerDocument.importNode(elementToImport, true);
            uaElementToImport.children = null;
        }
        uaElementToImport.element = elementToImport;
    }

    private boolean isEnabledByFilterAttribute(String filter) {
        return !FilterResolver.getInstance().isFiltered(filter);
    }

    private boolean isFilterEnabled(Filter filter) {
        return !FilterResolver.getInstance().isFiltered(filter.name, filter.value, filter.isNegated);
    }

    public Element getElement() {
        return this.element;
    }

    private class Filter {
        String name;
        String value;
        boolean isNegated;

        public Filter(String name, String value, boolean isNegated) {
            this.name = name;
            this.value = value;
            this.isNegated = isNegated;
        }
    }
}

