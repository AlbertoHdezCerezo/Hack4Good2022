import { Controller } from '@hotwired/stimulus'

/**
 * Logic for editable fragments:
 * - Toggle HTML fragment between read and edit mode.
 * - Persist fragment changes in database.
 * - ...
 */
export default class extends Controller {
  get fragment () {
    return this.element.firstElementChild
  }

  connect () {
    this._initializeFragment()
  }

  /**
   * Load Stimulus fragment actions to underlying fragment HTML.
   * @private
   */
  _initializeFragment () {
    this.fragment.dataset.action = `
      click->editor-common-document-fragment-component#enableFragmentTyping
      blur->editor-common-document-fragment-component#disableFragmentTyping
    `
  }

  _enableEditMode () {
    this.fragment.setAttribute('contenteditable', 'true')
  }

  _disableEditMode () {
    this.fragment.setAttribute('contenteditable', 'true')
  }

  enableFragmentTyping () {
    this._enableEditMode()
    this.fragment.focus()
  }

  disableFragmentTyping () {
    this._disableEditMode()
  }
}
