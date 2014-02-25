require 'spec_helper'

describe UserPermission do
  it { should belong_to(:user) }
  it { should belong_to(:playlist) }
end