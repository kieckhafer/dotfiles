'use babel';

import { Record } from 'immutable';

const defaults = {
  spotifyIcon: '',
  settingsDetails: '',
  musicDetails: ''
};

export default class SpotifyStateView extends Record(defaults) {
}
