/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.notify.Notification
 *  org.eclipse.emf.common.notify.NotificationChain
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.impl.ENotificationImpl
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.chapters.impl;

import autosar40.genericstructure.generaltemplateclasses.arobject.impl.ARObjectImpl;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterContent;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterModel;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChapterOrMsrQuery;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.ChaptersPackage;
import autosar40.genericstructure.generaltemplateclasses.documentation.chapters.TopicOrMsrQuery;
import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.impl.ENotificationImpl;

public class ChapterModelImpl
extends ARObjectImpl
implements ChapterModel {
    protected ChapterContent chapterContent;
    protected TopicOrMsrQuery topic1;
    protected ChapterOrMsrQuery chapter;

    protected ChapterModelImpl() {
    }

    protected EClass eStaticClass() {
        return ChaptersPackage.Literals.CHAPTER_MODEL;
    }

    public ChapterContent getChapterContent() {
        return this.chapterContent;
    }

    public NotificationChain basicSetChapterContent(ChapterContent newChapterContent, NotificationChain msgs) {
        ChapterContent oldChapterContent = this.chapterContent;
        this.chapterContent = newChapterContent;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 4, (Object)oldChapterContent, (Object)newChapterContent);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setChapterContent(ChapterContent newChapterContent) {
        if (newChapterContent != this.chapterContent) {
            NotificationChain msgs = null;
            if (this.chapterContent != null) {
                msgs = ((InternalEObject)this.chapterContent).eInverseRemove((InternalEObject)this, 4, ChapterContent.class, msgs);
            }
            if (newChapterContent != null) {
                msgs = ((InternalEObject)newChapterContent).eInverseAdd((InternalEObject)this, 4, ChapterContent.class, msgs);
            }
            if ((msgs = this.basicSetChapterContent(newChapterContent, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 4, (Object)newChapterContent, (Object)newChapterContent));
        }
    }

    public TopicOrMsrQuery getTopic1() {
        return this.topic1;
    }

    public NotificationChain basicSetTopic1(TopicOrMsrQuery newTopic1, NotificationChain msgs) {
        TopicOrMsrQuery oldTopic1 = this.topic1;
        this.topic1 = newTopic1;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 5, (Object)oldTopic1, (Object)newTopic1);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setTopic1(TopicOrMsrQuery newTopic1) {
        if (newTopic1 != this.topic1) {
            NotificationChain msgs = null;
            if (this.topic1 != null) {
                msgs = ((InternalEObject)this.topic1).eInverseRemove((InternalEObject)this, 4, TopicOrMsrQuery.class, msgs);
            }
            if (newTopic1 != null) {
                msgs = ((InternalEObject)newTopic1).eInverseAdd((InternalEObject)this, 4, TopicOrMsrQuery.class, msgs);
            }
            if ((msgs = this.basicSetTopic1(newTopic1, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 5, (Object)newTopic1, (Object)newTopic1));
        }
    }

    public ChapterOrMsrQuery getChapter() {
        return this.chapter;
    }

    public NotificationChain basicSetChapter(ChapterOrMsrQuery newChapter, NotificationChain msgs) {
        ChapterOrMsrQuery oldChapter = this.chapter;
        this.chapter = newChapter;
        if (this.eNotificationRequired()) {
            ENotificationImpl notification = new ENotificationImpl((InternalEObject)this, 1, 6, (Object)oldChapter, (Object)newChapter);
            if (msgs == null) {
                msgs = notification;
            } else {
                msgs.add((Notification)notification);
            }
        }
        return msgs;
    }

    public void setChapter(ChapterOrMsrQuery newChapter) {
        if (newChapter != this.chapter) {
            NotificationChain msgs = null;
            if (this.chapter != null) {
                msgs = ((InternalEObject)this.chapter).eInverseRemove((InternalEObject)this, 4, ChapterOrMsrQuery.class, msgs);
            }
            if (newChapter != null) {
                msgs = ((InternalEObject)newChapter).eInverseAdd((InternalEObject)this, 4, ChapterOrMsrQuery.class, msgs);
            }
            if ((msgs = this.basicSetChapter(newChapter, msgs)) != null) {
                msgs.dispatch();
            }
        } else if (this.eNotificationRequired()) {
            this.eNotify((Notification)new ENotificationImpl((InternalEObject)this, 1, 6, (Object)newChapter, (Object)newChapter));
        }
    }

    public NotificationChain eInverseAdd(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                if (this.chapterContent != null) {
                    msgs = ((InternalEObject)this.chapterContent).eInverseRemove((InternalEObject)this, -5, null, msgs);
                }
                return this.basicSetChapterContent((ChapterContent)otherEnd, msgs);
            }
            case 5: {
                if (this.topic1 != null) {
                    msgs = ((InternalEObject)this.topic1).eInverseRemove((InternalEObject)this, -6, null, msgs);
                }
                return this.basicSetTopic1((TopicOrMsrQuery)otherEnd, msgs);
            }
            case 6: {
                if (this.chapter != null) {
                    msgs = ((InternalEObject)this.chapter).eInverseRemove((InternalEObject)this, -7, null, msgs);
                }
                return this.basicSetChapter((ChapterOrMsrQuery)otherEnd, msgs);
            }
        }
        return super.eInverseAdd(otherEnd, featureID, msgs);
    }

    public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs) {
        switch (featureID) {
            case 4: {
                return this.basicSetChapterContent(null, msgs);
            }
            case 5: {
                return this.basicSetTopic1(null, msgs);
            }
            case 6: {
                return this.basicSetChapter(null, msgs);
            }
        }
        return super.eInverseRemove(otherEnd, featureID, msgs);
    }

    public Object eGet(int featureID, boolean resolve, boolean coreType) {
        switch (featureID) {
            case 4: {
                return this.getChapterContent();
            }
            case 5: {
                return this.getTopic1();
            }
            case 6: {
                return this.getChapter();
            }
        }
        return super.eGet(featureID, resolve, coreType);
    }

    public void eSet(int featureID, Object newValue) {
        switch (featureID) {
            case 4: {
                this.setChapterContent((ChapterContent)newValue);
                return;
            }
            case 5: {
                this.setTopic1((TopicOrMsrQuery)newValue);
                return;
            }
            case 6: {
                this.setChapter((ChapterOrMsrQuery)newValue);
                return;
            }
        }
        super.eSet(featureID, newValue);
    }

    public void eUnset(int featureID) {
        switch (featureID) {
            case 4: {
                this.setChapterContent(null);
                return;
            }
            case 5: {
                this.setTopic1(null);
                return;
            }
            case 6: {
                this.setChapter(null);
                return;
            }
        }
        super.eUnset(featureID);
    }

    public boolean eIsSet(int featureID) {
        switch (featureID) {
            case 4: {
                return this.chapterContent != null;
            }
            case 5: {
                return this.topic1 != null;
            }
            case 6: {
                return this.chapter != null;
            }
        }
        return super.eIsSet(featureID);
    }
}

