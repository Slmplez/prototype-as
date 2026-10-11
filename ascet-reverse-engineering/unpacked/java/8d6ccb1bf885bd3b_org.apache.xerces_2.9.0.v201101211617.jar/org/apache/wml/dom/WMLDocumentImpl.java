/*
 * Decompiled with CFR 0.152.
 */
package org.apache.wml.dom;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Hashtable;
import org.apache.wml.WMLDocument;
import org.apache.wml.dom.WMLElementImpl;
import org.apache.xerces.dom.DocumentImpl;
import org.w3c.dom.DOMException;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;

public class WMLDocumentImpl
extends DocumentImpl
implements WMLDocument {
    private static final long serialVersionUID = -6582904849512384104L;
    private static Hashtable _elementTypesWML;
    private static final Class[] _elemClassSigWML;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLDocumentImpl;
    static /* synthetic */ Class class$java$lang$String;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLBElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLNoopElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLAElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLSetvarElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLAccessElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLStrongElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLPostfieldElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLDoElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLWmlElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLTrElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLGoElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLBigElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLAnchorElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLTimerElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLSmallElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLOptgroupElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLHeadElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLTdElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLFieldsetElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLImgElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLRefreshElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLOneventElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLInputElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLPrevElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLTableElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLMetaElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLTemplateElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLBrElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLOptionElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLUElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLPElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLSelectElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLEmElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLIElementImpl;
    static /* synthetic */ Class class$org$apache$wml$dom$WMLCardElementImpl;

    public Element createElement(String string) throws DOMException {
        Class clazz = (Class)_elementTypesWML.get(string);
        if (clazz != null) {
            try {
                Constructor constructor = clazz.getConstructor(_elemClassSigWML);
                return (Element)constructor.newInstance(this, string);
            }
            catch (Exception exception) {
                Throwable throwable = exception instanceof InvocationTargetException ? ((InvocationTargetException)exception).getTargetException() : exception;
                System.out.println("Exception " + throwable.getClass().getName());
                System.out.println(throwable.getMessage());
                throw new IllegalStateException("Tag '" + string + "' associated with an Element class that failed to construct.");
            }
        }
        return new WMLElementImpl(this, string);
    }

    public WMLDocumentImpl(DocumentType documentType) {
        super(documentType, false);
    }

    static /* synthetic */ Class class$(String string) {
        try {
            return Class.forName(string);
        }
        catch (ClassNotFoundException classNotFoundException) {
            throw new NoClassDefFoundError(classNotFoundException.getMessage());
        }
    }

    static {
        _elemClassSigWML = new Class[]{class$org$apache$wml$dom$WMLDocumentImpl == null ? (class$org$apache$wml$dom$WMLDocumentImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLDocumentImpl")) : class$org$apache$wml$dom$WMLDocumentImpl, class$java$lang$String == null ? (class$java$lang$String = WMLDocumentImpl.class$("java.lang.String")) : class$java$lang$String};
        _elementTypesWML = new Hashtable();
        _elementTypesWML.put("b", class$org$apache$wml$dom$WMLBElementImpl == null ? (class$org$apache$wml$dom$WMLBElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLBElementImpl")) : class$org$apache$wml$dom$WMLBElementImpl);
        _elementTypesWML.put("noop", class$org$apache$wml$dom$WMLNoopElementImpl == null ? (class$org$apache$wml$dom$WMLNoopElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLNoopElementImpl")) : class$org$apache$wml$dom$WMLNoopElementImpl);
        _elementTypesWML.put("a", class$org$apache$wml$dom$WMLAElementImpl == null ? (class$org$apache$wml$dom$WMLAElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLAElementImpl")) : class$org$apache$wml$dom$WMLAElementImpl);
        _elementTypesWML.put("setvar", class$org$apache$wml$dom$WMLSetvarElementImpl == null ? (class$org$apache$wml$dom$WMLSetvarElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLSetvarElementImpl")) : class$org$apache$wml$dom$WMLSetvarElementImpl);
        _elementTypesWML.put("access", class$org$apache$wml$dom$WMLAccessElementImpl == null ? (class$org$apache$wml$dom$WMLAccessElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLAccessElementImpl")) : class$org$apache$wml$dom$WMLAccessElementImpl);
        _elementTypesWML.put("strong", class$org$apache$wml$dom$WMLStrongElementImpl == null ? (class$org$apache$wml$dom$WMLStrongElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLStrongElementImpl")) : class$org$apache$wml$dom$WMLStrongElementImpl);
        _elementTypesWML.put("postfield", class$org$apache$wml$dom$WMLPostfieldElementImpl == null ? (class$org$apache$wml$dom$WMLPostfieldElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLPostfieldElementImpl")) : class$org$apache$wml$dom$WMLPostfieldElementImpl);
        _elementTypesWML.put("do", class$org$apache$wml$dom$WMLDoElementImpl == null ? (class$org$apache$wml$dom$WMLDoElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLDoElementImpl")) : class$org$apache$wml$dom$WMLDoElementImpl);
        _elementTypesWML.put("wml", class$org$apache$wml$dom$WMLWmlElementImpl == null ? (class$org$apache$wml$dom$WMLWmlElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLWmlElementImpl")) : class$org$apache$wml$dom$WMLWmlElementImpl);
        _elementTypesWML.put("tr", class$org$apache$wml$dom$WMLTrElementImpl == null ? (class$org$apache$wml$dom$WMLTrElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLTrElementImpl")) : class$org$apache$wml$dom$WMLTrElementImpl);
        _elementTypesWML.put("go", class$org$apache$wml$dom$WMLGoElementImpl == null ? (class$org$apache$wml$dom$WMLGoElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLGoElementImpl")) : class$org$apache$wml$dom$WMLGoElementImpl);
        _elementTypesWML.put("big", class$org$apache$wml$dom$WMLBigElementImpl == null ? (class$org$apache$wml$dom$WMLBigElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLBigElementImpl")) : class$org$apache$wml$dom$WMLBigElementImpl);
        _elementTypesWML.put("anchor", class$org$apache$wml$dom$WMLAnchorElementImpl == null ? (class$org$apache$wml$dom$WMLAnchorElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLAnchorElementImpl")) : class$org$apache$wml$dom$WMLAnchorElementImpl);
        _elementTypesWML.put("timer", class$org$apache$wml$dom$WMLTimerElementImpl == null ? (class$org$apache$wml$dom$WMLTimerElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLTimerElementImpl")) : class$org$apache$wml$dom$WMLTimerElementImpl);
        _elementTypesWML.put("small", class$org$apache$wml$dom$WMLSmallElementImpl == null ? (class$org$apache$wml$dom$WMLSmallElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLSmallElementImpl")) : class$org$apache$wml$dom$WMLSmallElementImpl);
        _elementTypesWML.put("optgroup", class$org$apache$wml$dom$WMLOptgroupElementImpl == null ? (class$org$apache$wml$dom$WMLOptgroupElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLOptgroupElementImpl")) : class$org$apache$wml$dom$WMLOptgroupElementImpl);
        _elementTypesWML.put("head", class$org$apache$wml$dom$WMLHeadElementImpl == null ? (class$org$apache$wml$dom$WMLHeadElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLHeadElementImpl")) : class$org$apache$wml$dom$WMLHeadElementImpl);
        _elementTypesWML.put("td", class$org$apache$wml$dom$WMLTdElementImpl == null ? (class$org$apache$wml$dom$WMLTdElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLTdElementImpl")) : class$org$apache$wml$dom$WMLTdElementImpl);
        _elementTypesWML.put("fieldset", class$org$apache$wml$dom$WMLFieldsetElementImpl == null ? (class$org$apache$wml$dom$WMLFieldsetElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLFieldsetElementImpl")) : class$org$apache$wml$dom$WMLFieldsetElementImpl);
        _elementTypesWML.put("img", class$org$apache$wml$dom$WMLImgElementImpl == null ? (class$org$apache$wml$dom$WMLImgElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLImgElementImpl")) : class$org$apache$wml$dom$WMLImgElementImpl);
        _elementTypesWML.put("refresh", class$org$apache$wml$dom$WMLRefreshElementImpl == null ? (class$org$apache$wml$dom$WMLRefreshElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLRefreshElementImpl")) : class$org$apache$wml$dom$WMLRefreshElementImpl);
        _elementTypesWML.put("onevent", class$org$apache$wml$dom$WMLOneventElementImpl == null ? (class$org$apache$wml$dom$WMLOneventElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLOneventElementImpl")) : class$org$apache$wml$dom$WMLOneventElementImpl);
        _elementTypesWML.put("input", class$org$apache$wml$dom$WMLInputElementImpl == null ? (class$org$apache$wml$dom$WMLInputElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLInputElementImpl")) : class$org$apache$wml$dom$WMLInputElementImpl);
        _elementTypesWML.put("prev", class$org$apache$wml$dom$WMLPrevElementImpl == null ? (class$org$apache$wml$dom$WMLPrevElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLPrevElementImpl")) : class$org$apache$wml$dom$WMLPrevElementImpl);
        _elementTypesWML.put("table", class$org$apache$wml$dom$WMLTableElementImpl == null ? (class$org$apache$wml$dom$WMLTableElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLTableElementImpl")) : class$org$apache$wml$dom$WMLTableElementImpl);
        _elementTypesWML.put("meta", class$org$apache$wml$dom$WMLMetaElementImpl == null ? (class$org$apache$wml$dom$WMLMetaElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLMetaElementImpl")) : class$org$apache$wml$dom$WMLMetaElementImpl);
        _elementTypesWML.put("template", class$org$apache$wml$dom$WMLTemplateElementImpl == null ? (class$org$apache$wml$dom$WMLTemplateElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLTemplateElementImpl")) : class$org$apache$wml$dom$WMLTemplateElementImpl);
        _elementTypesWML.put("br", class$org$apache$wml$dom$WMLBrElementImpl == null ? (class$org$apache$wml$dom$WMLBrElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLBrElementImpl")) : class$org$apache$wml$dom$WMLBrElementImpl);
        _elementTypesWML.put("option", class$org$apache$wml$dom$WMLOptionElementImpl == null ? (class$org$apache$wml$dom$WMLOptionElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLOptionElementImpl")) : class$org$apache$wml$dom$WMLOptionElementImpl);
        _elementTypesWML.put("u", class$org$apache$wml$dom$WMLUElementImpl == null ? (class$org$apache$wml$dom$WMLUElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLUElementImpl")) : class$org$apache$wml$dom$WMLUElementImpl);
        _elementTypesWML.put("p", class$org$apache$wml$dom$WMLPElementImpl == null ? (class$org$apache$wml$dom$WMLPElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLPElementImpl")) : class$org$apache$wml$dom$WMLPElementImpl);
        _elementTypesWML.put("select", class$org$apache$wml$dom$WMLSelectElementImpl == null ? (class$org$apache$wml$dom$WMLSelectElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLSelectElementImpl")) : class$org$apache$wml$dom$WMLSelectElementImpl);
        _elementTypesWML.put("em", class$org$apache$wml$dom$WMLEmElementImpl == null ? (class$org$apache$wml$dom$WMLEmElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLEmElementImpl")) : class$org$apache$wml$dom$WMLEmElementImpl);
        _elementTypesWML.put("i", class$org$apache$wml$dom$WMLIElementImpl == null ? (class$org$apache$wml$dom$WMLIElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLIElementImpl")) : class$org$apache$wml$dom$WMLIElementImpl);
        _elementTypesWML.put("card", class$org$apache$wml$dom$WMLCardElementImpl == null ? (class$org$apache$wml$dom$WMLCardElementImpl = WMLDocumentImpl.class$("org.apache.wml.dom.WMLCardElementImpl")) : class$org$apache$wml$dom$WMLCardElementImpl);
    }
}

