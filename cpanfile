requires 'CGI','4.54';
requires 'Plack::App::CGIBin';
requires 'CGI::Emulate::PSGI','0.2';
requires 'CGI::Compile','0.2';
on 'develop' => sub {
requires 'Perl::Tidy';
requires 'Perl::Critic';
requires 'Devel::NYTProf';
};
